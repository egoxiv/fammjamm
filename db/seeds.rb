# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

families = Family.create([
  {family_name: "Gomez", password_digest: "thisisnottapassword"},
  {family_name: "Golberg", password_digest: "anotherfakepassword"}
])

members = Member.create([
  {username: "erikgomez89", password_digest: "notrealpassword", first_name: "Erik", last_name: "Gomez", family_id: 0},
  {username: "jimmygoldberg72", password_digest: "afakepassword", first_name: "Jimmy", last_name: "Goldberg", family_id: 1}
])

tasks = Task.create([
  {task: "Pick up groceries", due_date: "1/01/2016", is_complete: true, member_id: 0, description: "Need to pick up milk, butter, and rice for dinner today. Groceries were out of stock last time we went."},
  {task: "Take kids to soccer practice", due_date: "1/13/2016", is_complete: false, member_id: 1, description: "Need to go to soccer practice with kids this weekend since my wife is working."}
])
