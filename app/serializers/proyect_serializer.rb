class ProyectSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :proyect_name, :client_name
  attribute :leader do |project|
    project.user.email
  end
  attribute :team do |proyect|
    current_users=[]
    proyect.users.each do |user|
      (Team.find_by(proyect_id: proyect.id , user_id: user.id).deleted_at ) ? nil : (current_users<<user)
    end
    # proyect.users.each{|user| (Team.find_by(proyect_id: proyect.id , user_id: user.id).deleted_at)? nil : proyect.users.map(&:email)}
    current_users.map(&:email)
  end
end
