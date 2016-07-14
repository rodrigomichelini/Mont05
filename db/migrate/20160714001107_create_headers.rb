class CreateHeaders < ActiveRecord::Migration[5.0]
  def change
    create_table :headers do |t|
      t.string :name
      t.string :image
      t.string :partnum
      t.string :creator
      t.string :manufacturer
      t.string :platform

      t.timestamps
    end
  end
end
