class CreateParadas < ActiveRecord::Migration[6.0]
  def change
    create_table :paradas do |t|
      t.string :endereco
      t.belongs_to :carona, null: false, foreign_key: true

      t.timestamps
    end
  end
end
