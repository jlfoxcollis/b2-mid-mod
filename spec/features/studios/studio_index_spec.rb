require 'rails_helper'

RSpec.describe 'studio features', type: :feature do
  it 'can display all studios, and all movies belong to a studio' do
    @s1 = Studio.create(name: "Warner", location: "HollyWood")
    @s2 = Studio.create(name: "Time", location: "BollyWood")
    @s3 = Studio.create(name: "Fox", location: "Florida")


    @m1 = @s1.movies.create(title: 'title1', creation_date: '03/07/1984', genre: 'Romance')
    @m2 = @s2.movies.create(title: 'title2', creation_date: '01/01/2001', genre: 'Comedy')
    @m3 = @s3.movies.create(title: 'title3', creation_date: '01/02/2001', genre: 'Bromance')

    @a1 = Actor.create(name: "Johnny", age: 55)
    @a2 = Actor.create(name: "Depp", age: 54)
    @a3 = Actor.create(name: "leonardo", age: 23)
    @a4 = Actor.create(name: "Dicaprio", age: 32)

    @ma1 = MovieActor.create(movie_id: @m1, actor_id: @a1)
    @ma2 = MovieActor.create(movie_id: @m1, actor_id: @a3)
    @ma3 = MovieActor.create(movie_id: @m2, actor_id: @a1)
    @ma4 = MovieActor.create(movie_id: @m2, actor_id: @a2)
    @ma5 = MovieActor.create(movie_id: @m2, actor_id: @a3)
    @ma6 = MovieActor.create(movie_id: @m3, actor_id: @a4)

    visit studios_path
    expect(page).to have_content(@s1.name)
    expect(page).to have_content(@s2.name)
    expect(page).to have_content(@s3.name)
    expect(page).to have_content(@s1.location)
    expect(page).to have_content(@s1.location)
    expect(page).to have_content(@s1.location)
    expect(page).to have_content(@m1.title)
    expect(page).to have_content(@m2.title)
    expect(page).to have_content(@m3.title)
  end

end
