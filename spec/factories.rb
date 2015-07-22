FactoryGirl.define do
  factory(:user) do
    email 'user@user.com'
    password '13241234'
    # admin false
  end
end
