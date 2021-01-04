class Changemoviescolumn < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :creation_date
    add_column :movies, :year, :integer
  end
end
