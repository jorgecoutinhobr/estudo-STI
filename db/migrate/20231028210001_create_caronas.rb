class CreateCaronas < ActiveRecord::Migration[6.0]
  def change
    create_table :caronas do |t|
      t.string :nome
      t.string :partida
      t.string :destino
      t.date :dia
      t.time :hora
      t.integer :passageiros
      t.float :valor
      t.text :observacao

      t.timestamps
    end
  end
end
