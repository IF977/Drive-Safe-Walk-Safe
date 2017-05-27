class CreateAcidentes < ActiveRecord::Migration
  def change
    create_table :acidentes do |t|
      t.text :descricao
      t.string :vitimas
      t.string :local

      t.timestamps null: false
    end
  end
end
