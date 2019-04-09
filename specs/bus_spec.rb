require ("minitest/autorun")
require ("minitest/rg")
require_relative("../bus.rb")
require_relative("../passengers.rb")
require_relative("../BusStops.rb")

class BusTest < MiniTest::Test

  def setup
    @passenger1 = Passengers.new("Keanu Reeves", 48)
    @busstop1 = BusStop.new("Ocean Terminal", [@passenger2])
    @passenger2 = Passengers.new("Sandra Bullock", 51)
    @bus = Bus.new(22, "Ocean Terminal", [@passenger1])
    @passenger3 = Passengers.new("Gary Busey", 65)
  end

  def test_return_bus_number
    assert_equal(22, @bus.number)
  end

  def test_bus_goes_brum_brum
    assert_equal("Brum brum", @bus.drive_sound)
  end

  def test_how_many_passengers_on_the_bus
    assert_equal(1, @bus.passenger_count)
  end

  def test_passenger_gets_on_bus
    result = @bus.pick_up("Jemima Puddleduck")
    assert_equal(2, result.count)
  end

  def test_passenger_gets_off_bus
    result = @bus.drop_off("Jemima Puddleduck")
    assert_equal(1, result.count)
  end

  def test_remove_all_passengers
    result = @bus.remove_all_passengers
    assert_equal(0, result.count)
  end

  def test_how_many_people_in_the_queue
    assert_equal(1, @busstop1.queue_count)
  end

  def test_passenger_queues_at_the_bus_stop
    result = @busstop1.join_queue(@passenger3)
    assert_equal(2, @busstop1.queue_count)
  end

  def test_pick_up_all_passengers
    @bus.pick_up_all_passengers(@busstop1)
    assert_equal(2, @bus.passenger_count)
    assert_equal(0, @busstop1.queue_count)
  end

end
