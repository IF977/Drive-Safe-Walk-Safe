class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :autor
      t.text :body
      t.references :acidente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
