# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Studio.destroy_all
Actor.destroy_all
Movie.destroy_all

s1 = Studio.create(name: "Warner", location: "HollyWood")
s2 = Studio.create(name: "Time", location: "BollyWood")
s3 = Studio.create(name: "Fox", location: "Florida")


m1 = s1.movies.create(title: 'title1', year: 1984, genre: 'Romance')
m2 = s2.movies.create(title: 'title2', year: 2001, genre: 'Comedy')
m3 = s3.movies.create(title: 'title3', year: 2001, genre: 'Bromance')

a1 = Actor.create(name: "Johnny", age: 55)
a2 = Actor.create(name: "Depp", age: 54)
a3 = Actor.create(name: "leonardo", age: 23)
a4 = Actor.create(name: "Dicaprio", age: 32)

ma1 = MovieActor.create(movie_id: m1.id, actor_id: a1.id)
ma2 = MovieActor.create(movie_id: m1.id, actor_id: a3.id)
ma3 = MovieActor.create(movie_id: m2.id, actor_id: a1.id)
ma4 = MovieActor.create(movie_id: m2.id, actor_id: a2.id)
ma5 = MovieActor.create(movie_id: m2.id, actor_id: a3.id)
ma6 = MovieActor.create(movie_id: m3.id, actor_id: a4.id)
