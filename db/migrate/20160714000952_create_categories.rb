class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name #processador, placa de vídeo, memória, armazenamento, etc
      t.string :image
      t.string :type #se é "periférico" ou "hardware", ou algum outro tipo
      t.text :description

      t.timestamps
    end
  end
end
