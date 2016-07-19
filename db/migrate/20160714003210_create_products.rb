class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|

      t.references :productable, polymorphic: true, index: true

      t.string :name
      t.string :image
      t.string :partnum #número único de uma versão do produto. Part Number.
      t.string :manufacturer #fabricante
      t.string :platform #mobile, desktop, server, laptop

      t.timestamps
    end
  end
end
