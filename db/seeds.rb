# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Family.destroy_all

families1 = Family.create({
  family_name: "Gomez"
})

families2 = Family.create({
  family_name: "Golberg"
})


member1 = Member.create({
  username: "erikgomez89",
  password: "notrealpassword",
  password_confirmation: "notrealpassword",
  first_name: "Erik",
  last_name: "Gomez",
  email: "egoxiv@gmail.com"
})

member2 = Member.create({
  username: "jimmygoldberg72",
  password: "afakepassword",
  password_confirmation: "afakepassword",
  first_name: "Jimmy",
  last_name: "Goldberg",
  email: "jimmyg47@yahoo.com"
})

families1.members.push(member1)
families2.members.push(member2)

member1.tasks.create({
  task: "Pick up groceries",
  due_date: "1/01/2016",
  is_complete: true,
  description: "Need to pick up milk, butter, and rice for dinner today. Groceries were out of stock last time we went."
})

member1.tasks.create({
  task: "Task 2",
  due_date: "1/01/2016",
  is_complete: true,
  description: "Need to pick up milk, butter, and rice for dinner today. Groceries were out of stock last time we went."
})

member1.tasks.create({
  task: "Task 3",
  due_date: "1/01/2016",
  is_complete: true,
  description: "Need to pick up milk, butter, and rice for dinner today. Groceries were out of stock last time we went."
})

member1.tasks.create({
  task: "Task 4",
  due_date: "1/01/2016",
  is_complete: true,
  description: "Need to pick up milk, butter, and rice for dinner today. Groceries were out of stock last time we went."
})


member2.tasks.create({
  task: "Take kids to soccer practice",
  due_date: "1/13/2016",
  is_complete: false,
  description: "Need to go to soccer practice with kids this weekend since my wife is working."
})
