require 'van'
describe Van do
  it { is_expected.to respond_to(:take_from_station)  }
end
describe Van do
  it { is_expected.to respond_to(:deliver_to_garage)  }
end
# describe Van do
#   it 'takes the bikes from the dock' do
#     dockingstation = DockingStation.new
#     bike = Bike.new
#     dockingstation.dock(bike)
#     subject.take_bikes(dockingstation)
#     expect(dockingstation.bikes).to eq []
#   end
# end

describe Van do
  it 'takes only broken bikes and leaves working ones' do
    dockingstation = DockingStation.new
    bike = Bike.new
    broken_bike = Bike.new
    broken_bike.broken
    dockingstation.dock(bike)
    dockingstation.dock(broken_bike)
    subject.take_from_station(dockingstation)
    expect(dockingstation.bikes).to eq [bike]
  end
end

describe Van do
  it 'store broken bikes on the van' do
    dockingstation = DockingStation.new
    bike = Bike.new
    broken_bike = Bike.new
    broken_bike.broken
    dockingstation.dock(bike)
    dockingstation.dock(broken_bike)
    subject.take_from_station(dockingstation)
    expect(subject.van_storage).to eq [broken_bike]
  end
end

describe Van do
  it 'deliver the bike to garage' do
    dockingstation = DockingStation.new
    bike = Bike.new
    garage = Garage.new
    bike.broken
    dockingstation.dock(bike)
    subject.take_from_station(dockingstation)
    subject.deliver_to_garage(garage)
    expect(garage.garage_storage).to eq [bike]

  end
end

describe Van do
  it 'delivers bikes and empties the van' do
    dockingstation = DockingStation.new
    bike = Bike.new
    garage = Garage.new
    bike.broken
    dockingstation.dock(bike)
    subject.take_from_station(dockingstation)
    subject.deliver_to_garage(garage)
    expect(subject.van_storage).to eq []

  end
end
