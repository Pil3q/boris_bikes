require 'dockingstation'
describe DockingStation do
  it { is_expected.to respond_to(:release_bike)  }

  describe '#release_bike' do
    it 'releases the bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
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
  # it "raises" do
  #   expect { subject.release_bike }.to raise_error("no bikes")
  # end
end
end
