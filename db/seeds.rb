# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# categories = Category.create([
#   {
#     title: "Technology",
#     description: "Facts and News about tech things"
#   },
#   {
#     title: "Games",
#     description: "Facts and News about games"
#   },
#   {
#     title: "Music",
#     description: "Facts and News about music"
#   },
#   {
#     title: "Food and Drinks",
#     description: "Facts and News about food and drinks"
#   }
# ])

# facts = Fact.create([
#   {
#     title: "What is GraphQL?",
#     summary: "In technical terms, GraphQL is a specification and provides a way for querying for data.",
#     website_origin: "https://dev.to/shrutikapoor08/what-is-graphql-hj5",
#     image_url: "https://cdn.artandlogic.com/wp-content/uploads/graphQl.png",
#     category: categories.first
#   },
#   {
#     title: "14 Places In The World To Have The Best Pizza",
#     summary: "Pizza is one of the universally loved dishes today and known to one and all. From Chicago’s deep dish to thin crust, there are multiple options available.",
#     website_origin: "https://traveltriangle.com/blog/places-in-the-world-to-have-the-best-pizza/",
#     image_url: "https://img.traveltriangle.com/blog/wp-content/uploads/2019/04/cover-for-Places-In-The-World-To-Have-The-Best-Pizza.jpg",
#     category: categories.last
#   }
# ])




# keywords = Keyword.create([
#   {
#     word: "api"
#   },
#   {
#     word: "data"
#   },
#   {
#     word: "programming"
#   },
#   {
#     word: "pizza"
#   },
#   {
#     word: "foodporn"
#   }
# ])

facts = Fact.all
keywords = Keyword.all

keywords_facts = KeywordFact.create([
  {
    fact: facts.first,
    keyword: keywords.first
  },
  {
    fact: facts.last,
    keyword: keywords.last
  }
])