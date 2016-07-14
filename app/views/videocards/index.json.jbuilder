json.array!(@videocards) do |videocard|
  json.extract! videocard, :id, :memory, :memorytype, :memoryinterfacewidth, :memorybaseclock, :memoryboostclock, :memorybandwidth, :computingpower, :interface, :chipset, :sli, :slitype, :crossfire, :crossfiretype, :dviport, :hdmiport, :minihdmiport, :displayport, :minidisplayport, :expansionslotw, :tdp, :maxtemp, :powerconnectors, :framesync, :ventoinha, :maximumresolution, :multimonitor, :comprimento, :largura, :altura, :color
  json.url videocard_url(videocard, format: :json)
end
