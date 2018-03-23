require 'garage'
describe Garage do
    it { is_expected.to respond_to(:fix_bikes)  }
end

describe Garage do
  it 'checks is the bike was fixed' do
    dockingstation = DockingStation.new
    bike = Bike.new
    van = Van.new
    bike.broken
    dockingstation.dock(bike)
    van.take_from_station(dockingstation)
    van.deliver_to_garage(subject)
    subject.fix_bikes
    expect(subject.garage_storage.sample.status).to eq true
  end
end
