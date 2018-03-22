require 'dockingstation'

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)  }
end

describe DockingStation do
  describe '#release_bike' do
    it 'releases the bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
  end
end

describe Bike do
  it 'expect bike to working? or not' do
    expect(subject.working?).to eq true
  end
end

describe DockingStation do
  it { is_expected.to respond_to(:dock).with(1).argument }
  it { is_expected.to respond_to(:bike) }
end


describe DockingStation do
  it 'docks something' do
    bike = Bike.new
    20.times { expect(subject.dock(bike)).to eq bike }
  end
end

describe DockingStation do
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end
end

describe DockingStation do
  it 'checks if there is a bike in DockingStation' do
    expect(subject.bike).to eq nil
  end
end


describe DockingStation do
  it 'raises an error when releasing a bike from empty dock' do
    expect{subject.release_bike}.to raise_error 'there are no bikes'
  end
end
describe DockingStation do
  it 'raises an error when docki a bike to the full dock' do
    bike = Bike.new
    subject.dock(bike)
    expect{subject.dock(bike)}.to raise_error 'dock is full'
  end
end
