class AddPosterToList < ActiveRecord::Migration[6.0]
  def change
    add_column :lists, :movie_url, :string
  end
end
