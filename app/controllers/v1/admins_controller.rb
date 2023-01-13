module V1
  class V1::AdminsController < Devise::RegistrationsController
    before_action :current_admin
    before_action :current_super_admin, only: %i[give_admin remove_admin]
    before_action :set_proyect, only: %i[update_proyect destroy_proyect]
    before_action :set_team, only: %i[delete_user_from_proyect]
    before_action :set_user, only: %i[give_admin remove_admin]

    def dashboard_users
      render json: {
        status: 200,
        data: UserSerializer.new(User.order(:id)).serializable_hash[:data].map{|data| data[:attributes]}
      }, status: :ok
    end

    def dashboard_proyects
      render json: {
        status: 200,
        data: ProyectSerializer.new(Proyect.order(:id)).serializable_hash[:data].map{|data| data[:attributes]}
      }, status: :ok
    end

    def create_proyect
      @proyect = Proyect.new(proyect_params)
      if @proyect.valid?
          @proyect.save
          render json: {
            status: 200,
            data: ProyectSerializer.new(@proyect).serializable_hash[:data][:attributes]
          }, status: :ok
      else
          render json: { errors: @proyect.errors.messages }, status: :bad_request
          error_log(@proyect, '')
      end
    end

    def update_proyect
      if @proyect.update(proyect_params)
        render json: {
          status: 200,
          data: ProyectSerializer.new(@proyect).serializable_hash[:data][:attributes]
        }, status: :ok
      else
          render json: { errors: @proyect.errors.messages }, status: :bad_request
          error_log(@proyect, '')
      end
    end

    def destroy_proyect
      @proyect.destroy
      render json: {
        status: 201,
        message: "proyect has been deleted"
      }, status: :ok
  end

  def add_user_to_proyect
    @team = Team.new(team_params.merge(:added_at => DateTime.now))
    if @team.valid? && !Team.find_by(proyect_id: @team.proyect_id , user_id:@team.user_id ) && (Proyect.find_by(id: @team.proyect_id).user_id!=@team.user_id)
      @team.save
      render_json_ok
      movement_log(@team, true)
    elsif Team.find_by(proyect_id: @team.proyect_id , user_id:@team.user_id).deleted_at
      @team = Team.find_by(proyect_id: @team.proyect_id , user_id:@team.user_id)
      (@team.update(:added_at => DateTime.now ,:deleted_at => nil))
      render_json_ok
      movement_log(@team,true)
    else
      error_log(@team, "attributes are not valids or the user is already part of the team")
      render json: {
        message: "attributes are not valids or the user is already part of the team",
        errors: @team.errors.messages
      }, status: :bad_request
          
    end
  end

    def render_json_ok
      render json: {
        status: 200,
        data: ProyectSerializer.new(Proyect.find_by_id(@team.proyect_id)).serializable_hash[:data][:attributes]
      }, status: :ok
    end

    def delete_user_from_proyect
      if @team.update(:deleted_at => DateTime.now)
        render json: {
          status: 200,
          data: ProyectSerializer.new(Proyect.find_by_id(@team.proyect_id)).serializable_hash[:data][:attributes]
        }, status: :ok
        movement_log(@team,false)
      else
        render json: {
          message: "attributes are not valids or the user is already part of the team",
          errors: @team.errors.messages
          }, status: :bad_request
        error_log(@team, "attributes are not valids or the user is already part of the team")
      end
    end


    def give_admin
      if @user.update(:role => 1)
        render json: {
          status: 200,
          data: UserSerializer.new(@user).serializable_hash[:data][:attributes]
        }, status: :ok
      else
        render json: {
          message: "xd",
          errors: @user.errors.messages
          }, status: :bad_request
        error_log(@user, '')
      end
    end

    def remove_admin
      if @user.update(:role => 0)
        render json: {
          status: 200,
          data: UserSerializer.new(@user).serializable_hash[:data][:attributes]
        }, status: :ok
      else
        render json: {
          message: "user does not exit",
          errors: @user.errors.messages
          }, status: :bad_request
        error_log(@user, 'user does not exist')
      end
    end



    private

    def current_super_admin
      begin
        jwt_payload= JWT.decode(request.headers['Authorization'].split(' ')[1],
        Rails.application.credentials.devise_jwt_secret_key!).first
        current_user = User.find_by_jti(jwt_payload['jti'])
        current_user.role = ("SuperAdmin")? (return true) : (render json: {
          status: 401,
          message: "you are not superadmin"
        }, status: :unauthorized)
      rescue
        render json: {
          status: 401,
          message: "user has no active session"
        }, status: :unauthorized
      end
    end

    def current_admin
      begin
        jwt_payload= JWT.decode(request.headers['Authorization'].split(' ')[1],Rails.application.credentials.devise_jwt_secret_key!).first
        current_user = User.find_by_jti(jwt_payload['jti'])
        current_user.role = ("Admin" || "SuperAdmin")? (return true) : (render json: {
              status: 401,
              message: "you are not superadmin"
            }, status: :unauthorized)
      rescue
        render json: {
          status: 401,
          message: "user has no active session"
        }, status: :unauthorized
      end
    end

    def error_log(object, message)
      log_params=params.permit()
      @log = Log.new(log_params.merge(:happened_at => DateTime.now, :description => ( object.errors.messages != {} ? object.errors.messages : message) , :logeable => 'error'))
      @log.save
    end

    def movement_log(object,type)
      @user_move=User.find(object.user_id)
      @proyect_move=Proyect.find(object.proyect_id)
      log_params=params.permit()
      if type
        @log = Log.new(log_params.merge(:happened_at => DateTime.now, :description => 'El usuario '+@user_move.email+' fue agregado correctamente al proyecto '+ @proyect_move.proyect_name , :logeable => 'movement'))
      else
        @log = Log.new(log_params.merge(:happened_at => DateTime.now, :description => 'El usuario '+@user_move.email+' fue eliminado correctamente al proyecto '+ @proyect_move.proyect_name , :logeable => 'movement'))
      @log.save
      end
    end

    def proyect_params
      params.require(:proyect).permit(:proyect_name, :client_name, :user_id)
    end

    def team_params
      params.require(:team).permit(:user_id, :proyect_id,)
    end

    # def log_params
    #   params.require(:log).permit(:user_id, :proyect_id, :happened_at, :description )
    # end


    def set_proyect
      @proyect = Proyect.find_by(id: params[:id])
      # head :not_found unless @product
      @proyect? nil : (render json: {
        status: 401,
        message: "proyect does not exists"
      }, status: :unauthorized)
    end

    def set_team
      @team = Team.find_by(proyect_id: team_params[:proyect_id] , user_id: team_params[:user_id] )
      # head :not_found unless @product
      @team? nil : (render json: {
        status: 401,
        message: "this team relation does not exists"
      }, status: :unauthorized)
    end

    def set_user
      @user = User.find_by(id: params[:id])
      # head :not_found unless @product
      @user? nil : (render json: {
        status: 401,
        message: "user does not exists"
      }, status: :unauthorized)
    end
  end
end
