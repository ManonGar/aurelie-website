class CreateDrawings < ActiveRecord::Migration[6.0]
  def change
    create_table :drawings do |t|
      t.string :title
      t.integer :date
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
