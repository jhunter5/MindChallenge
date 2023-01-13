get '/admin/dashboard_users' , to: 'admins#dashboard_users', as: 'dashboard_users'
get '/admin/dashboard_proyects' , to: 'admins#dashboard_proyects', as: 'dashboard_proyects'

post '/admin/user_create' , to: 'admins#create' , defaults: { format: nil }

post '/admin/give_admin', to:'admins#give_admin'
delete '/admin/give_admin', to:'admins#remove_admin'

post '/admin/proyect' , to: 'admins#create_proyect'
put '/admin/proyect' , to: 'admins#update_proyect'
delete '/admin/proyect' , to: 'admins#destroy_proyect'

post '/admin/user_to_proyect' , to: 'admins#add_user_to_proyect'
delete '/admin/user_to_proyect' , to: 'admins#delete_user_from_proyect'
