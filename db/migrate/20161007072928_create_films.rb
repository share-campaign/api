class CreateFilms < ActiveRecord::Migration[5.0]
  def change
    create_table :films do |t|

      t.timestamps
    end
  end
end
