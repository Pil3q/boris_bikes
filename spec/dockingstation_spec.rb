require 'dockingstation'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)  }
  it 'returns instance of bike class when called release_bike' do
    expect(DockingStation.new.release_bike).to be_a Bike
  end

  it 'expect bike to working? or not' do
    expect(Bike.new.working?).to eq true
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

  it { is_expected.to respond_to(:bike) }

  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end
