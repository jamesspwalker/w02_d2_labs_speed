require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bus.rb")
require_relative("../passengers.rb")
require_relative("../BusStops.rb")

class BusStopTest < MiniTest::Test

  def setup
    @busstop1 = BusStop.new("Ocean Terminal")
  end

  def test_how_many_people_in_the_queue
    assert_equal(0, @busstop1.queue_count)
  end




end
