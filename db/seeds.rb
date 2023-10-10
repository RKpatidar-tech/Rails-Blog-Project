# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# author = Author.create(
#     name: 'Ravi'
# )

# 20.times do |i|
#     puts "Creating Author #{i+1}"
#     Author.create(
#         name: "Student #{i+1}"
#     )
# end

# Author.all.each do |author|
#     author.books.create(title: "Dummy Book Name #{author.id}")
#     author.books.create(title: "Book Name #{author.id}")
# end

# 20.times do |i|
#     puts "Creating Assembly #{i+1}"
#     Assembly.create(
#         name: "Assembly #{i+1}"
#     )
# end
20.times do |i|
    puts "Creating Parts #{i+1}"
    Part.create(
        part_number: "Parts #{i+1}"
    )
end