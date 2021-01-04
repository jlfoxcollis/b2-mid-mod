class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :creation_date
      t.string :genre

      t.timestamps
    end
  end
end
