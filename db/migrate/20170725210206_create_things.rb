class CreateThings < ActiveRecord::Migration[5.1]
  def change
    create_table :things do |t|
      t.text :title

      t.timestamps
    end
  end
end
