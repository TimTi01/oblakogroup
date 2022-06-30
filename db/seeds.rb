# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

pr = Project.create!(title: 'Семья')
pr2 = Project.create!(title: 'Работа')
pr3 = Project.create!(title: 'Прочее')

pr.todos.create!(text: 'Купить молоко')
pr.todos.create!(text: 'Заменить масло в двигателе до 23 апреля')
pr.todos.create!(text: 'Отправить письмо бабушке', is_completed: true)
pr.todos.create!(text: 'Заплатить за квартиру')
pr.todos.create!(text: 'Забрать обувь из ремонта')

pr2.todos.create!(text: 'Позвонить заказчику', is_completed: true)
pr2.todos.create!(text: 'Отправить документы', is_completed: true)
pr2.todos.create!(text: 'Заполнить отчет')

pr3.todos.create!(text: 'Позвонить другу')
pr3.todos.create!(text: 'Подготовиться к поездке')