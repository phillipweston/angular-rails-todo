# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

list = List.create(name: "My Todos", description: "This is my first todo list app using angular and rails together.")

list.items.create(text: "Text Kimberly I love her")
list.items.create(text: "Finish AngularJS todo")
list.items.create(text: "Interview with Shipwire at 1:30pm")
list.items.create(text: "Send documents to Stephanie")
list.items.create(text: "Start gathering financial papers")
list.items.create(text: "Ask friends if Stephanie can call them")
list.items.create(text: "Upload finished todo app to github")