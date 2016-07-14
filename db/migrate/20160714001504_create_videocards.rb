class CreateVideocards < ActiveRecord::Migration[5.0]
  def change
    create_table :videocards do |t|
      t.integer :memory
      t.string :memorytype
      t.integer :memoryinterfacewidth
      t.integer :memorybaseclock
      t.integer :memoryboostclock
      t.integer :memorybandwidth
      t.float :computingpower
      t.string :interface
      t.string :chipset
      t.boolean :sli
      t.string :slitype
      t.boolean :crossfire
      t.string :crossfiretype
      t.integer :dviport
      t.integer :hdmiport
      t.integer :minihdmiport
      t.integer :displayport
      t.integer :minidisplayport
      t.integer :expansionslotw
      t.integer :tdp
      t.float :maxtemp
      t.string :powerconnectors
      t.string :framesync
      t.boolean :ventoinha
      t.string :maximumresolution
      t.boolean :multimonitor
      t.integer :comprimento
      t.integer :largura
      t.integer :altura
      t.string :color

      t.timestamps
    end
  end
end
