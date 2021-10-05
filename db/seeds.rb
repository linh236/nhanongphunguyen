# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# ---------------------------------------------------------
# Roles user 
[
  {id: 1, name: "admin", description: ""},
  {id: 2, name: "user", description: ""},
  {id: 3, name: "client", description: ""},
].each do |attr|
  role = Role.find_by(id: attr[:id])
  Role.transaction do
    unless role
      role = Role.new(attr)
      role.save
    else
      role.update_attributes attr
    end
  end
end
# -----------------------------------------------------------
# Users 
[
  {id: 1, email: "admin@gmail.com", password: "password", role_id: Role.first.id},
  {id: 2, email: "user@gmail.com", password: "password", role_id: Role.second.id},
  {id: 3, email: "client@gmail.com", password: "password", role_id: Role.third.id},
].each do |attr|
  user = User.find_by(id: attr[:id])
  User.transaction do
    unless user
      user = User.new(attr)
      user.save
    else
      user.update_attributes attr
    end
  end
end

