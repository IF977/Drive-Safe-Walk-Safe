class CreateAcidentes < ActiveRecord::Migration
  def change
    create_table :acidentes do |t|
      t.string :bairro
      t.string :endereco
      t.bigint :numero
      t.string :complemento
      t.string :natureza
      t.string :descricao
      t.integer :vitimas
      t.datetime :data_hora

      t.timestamps null: false
    end
  end
end
