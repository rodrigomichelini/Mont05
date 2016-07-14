require 'test_helper'

class VideocardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @videocard = videocards(:one)
  end

  test "should get index" do
    get videocards_url
    assert_response :success
  end

  test "should get new" do
    get new_videocard_url
    assert_response :success
  end

  test "should create videocard" do
    assert_difference('Videocard.count') do
      post videocards_url, params: { videocard: { altura: @videocard.altura, chipset: @videocard.chipset, color: @videocard.color, comprimento: @videocard.comprimento, computingpower: @videocard.computingpower, crossfire: @videocard.crossfire, crossfiretype: @videocard.crossfiretype, displayport: @videocard.displayport, dviport: @videocard.dviport, expansionslotw: @videocard.expansionslotw, framesync: @videocard.framesync, hdmiport: @videocard.hdmiport, interface: @videocard.interface, largura: @videocard.largura, maximumresolution: @videocard.maximumresolution, maxtemp: @videocard.maxtemp, memory: @videocard.memory, memorybandwidth: @videocard.memorybandwidth, memorybaseclock: @videocard.memorybaseclock, memoryboostclock: @videocard.memoryboostclock, memoryinterfacewidth: @videocard.memoryinterfacewidth, memorytype: @videocard.memorytype, minidisplayport: @videocard.minidisplayport, minihdmiport: @videocard.minihdmiport, multimonitor: @videocard.multimonitor, powerconnectors: @videocard.powerconnectors, sli: @videocard.sli, slitype: @videocard.slitype, tdp: @videocard.tdp, ventoinha: @videocard.ventoinha } }
    end

    assert_redirected_to videocard_url(Videocard.last)
  end

  test "should show videocard" do
    get videocard_url(@videocard)
    assert_response :success
  end

  test "should get edit" do
    get edit_videocard_url(@videocard)
    assert_response :success
  end

  test "should update videocard" do
    patch videocard_url(@videocard), params: { videocard: { altura: @videocard.altura, chipset: @videocard.chipset, color: @videocard.color, comprimento: @videocard.comprimento, computingpower: @videocard.computingpower, crossfire: @videocard.crossfire, crossfiretype: @videocard.crossfiretype, displayport: @videocard.displayport, dviport: @videocard.dviport, expansionslotw: @videocard.expansionslotw, framesync: @videocard.framesync, hdmiport: @videocard.hdmiport, interface: @videocard.interface, largura: @videocard.largura, maximumresolution: @videocard.maximumresolution, maxtemp: @videocard.maxtemp, memory: @videocard.memory, memorybandwidth: @videocard.memorybandwidth, memorybaseclock: @videocard.memorybaseclock, memoryboostclock: @videocard.memoryboostclock, memoryinterfacewidth: @videocard.memoryinterfacewidth, memorytype: @videocard.memorytype, minidisplayport: @videocard.minidisplayport, minihdmiport: @videocard.minihdmiport, multimonitor: @videocard.multimonitor, powerconnectors: @videocard.powerconnectors, sli: @videocard.sli, slitype: @videocard.slitype, tdp: @videocard.tdp, ventoinha: @videocard.ventoinha } }
    assert_redirected_to videocard_url(@videocard)
  end

  test "should destroy videocard" do
    assert_difference('Videocard.count', -1) do
      delete videocard_url(@videocard)
    end

    assert_redirected_to videocards_url
  end
end
