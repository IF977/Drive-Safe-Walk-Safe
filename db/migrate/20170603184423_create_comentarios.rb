class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :nome
      t.text :texto
      t.bigint :acidente_id

      t.timestamps null: false
    end
  end
end
