class CreateUnidades < ActiveRecord::Migration[6.0]
  def change
    create_table :unidades do |t|
      t.string :nome
      t.string :endereco
      t.string :numero
      t.string :bairro
      t.string :cidade
      t.string :cep
      t.string :data_desativacao

      t.timestamps
    end
  end
end
