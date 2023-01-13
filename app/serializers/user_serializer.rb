class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :id, :email, :role, :created_at, :jti
end
