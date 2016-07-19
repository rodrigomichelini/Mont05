class CreateVideocards < ActiveRecord::Migration[5.0]
  def change
    create_table :videocards do |t|

      t.references :product, index: true

      t.integer :memory #quantidade de RAM de video dedicada
      t.string :memorytype #tipo de RAM de video dedicada. ex: gddr5
      t.integer :memoryinterfacewidth #ex: 512 bit, 256 bit, etc
      t.integer :memorybaseclock #clock da memoria (base) ex: 1500 MHZ
      t.integer :memoryboostclock #clock da memoria (boost) ex: 1800 MHZ
      t.integer :memorybandwidth #largura de banda processada pela memória. ex: 384 GB/s

      t.float :computingpower #especificar poder de computação FP32 ex: 5,120 GFLOPS
      t.string :interface #ex.: AGP, PCI, PCI Express 3.0 x16, etc
      t.string :chipset #Radeon R9 280, Geforce GTX 980, etc
      t.boolean :sli
      t.string :slitype #especificar se aceita sli e qual o tipo
      t.boolean :crossfire
      t.string :crossfiretype # especificar se aceita crossfire e qual o tipo

      #abaixo especificações mais detalhadas
      t.integer :dviport #numero de portas dvi
      t.integer :hdmiport #numero de portas hdmi
      t.integer :minihdmiport #numero de portas mini hdmi
      t.integer :displayport #numero de portas displayport
      t.integer :minidisplayport #numero de portas minidisplayport
      t.integer :expansionslotw #largura do expansion slot
      t.integer :tdp #em watts. melhor olhar aqui: https://pt.wikipedia.org/wiki/Projeto_de_For%C3%A7a_T%C3%A9rmica
      t.integer :maxtemp #temperatura máxima da placa em graus Celsius
      t.string :powerconnectors # ex número e/ou padrão: 9-Pin
      t.string :framesync #sincronização de quadros. especificar. ex: nenhum, G-Sync, Freesync
      t.boolean :ventoinha #indicar se possui(sim) ou não possui (não) ventoinha
      t.string :maximumresolution #resolução digital máxima ex: 7680x4320@60Hz
      t.boolean :multimonitor #mais de um monitor?

      #dimensões
      t.integer :comprimento #comprimento, em milímetros (mm), da placa
      t.integer :largura #largura, em milímetros (mm), da placa
      t.integer :altura #altura máxima, em milímetros (mm), da placa (contando o cooler, se tiver)

      t.string :color #cor da memória ou seu dissipador. Cor que predomina.

      t.timestamps

    end
  end
end
