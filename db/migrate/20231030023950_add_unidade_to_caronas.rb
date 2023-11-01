class AddUnidadeToCaronas < ActiveRecord::Migration[6.0]
  def change
    add_reference :caronas, :unidade, null: false, foreign_key: true
  end
end
