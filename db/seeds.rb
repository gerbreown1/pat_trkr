# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(:lname => "Brown", :fname => "Gerald", :password => "casc373", :password_confirmation => "casc373", :username => "gerbreown")
user.roles << administrators = Role.find_or_create!(:name => "Administrator")
doctor = User.create!(:lname => "Denura", :fname => "Susan", :password => "casc373", :password_confirmation => "casc373", :username => "sdenura")
user.roles << doctors = Role.create!(:name => "doctor")

create = Right.create!(:resource => "patients", :operation => "CREATE")
read = Right.create!(:resource => "patients", :operation => "READ")
update = Right.create!(:resource => "patients", :operation => "UPDATE")
delete = Right.create!(:resource => "patients", :operation => "DELETE")

administrators.rights << create
administrators.rights << read
administrators.rights << update
administrators.rights << delete

doctors.rights << create
doctors.rights << read
