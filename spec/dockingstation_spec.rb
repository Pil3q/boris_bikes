require 'dockingstation'

bike = Bike.new
bike1 = Bike.new

describe DockingStation do
  it { is_expected.to respond_to(:release_bike)  }
end

describe DockingStation do
  it 'has a default value' do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
  end
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
  it { is_expected.to respond_to(:bikes) }
end


describe DockingStation do
  it 'docks something' do
    subject.capacity.times { expect(subject.dock(bike)) }
  end
end

describe DockingStation do
  it 'returns docked bikes' do
    subject.dock(bike)
    expect(subject.bikes).to eq [bike]
  end
end

describe DockingStation do
  it 'checks if there is a bike in DockingStation' do
    expect(subject.bikes).to eq []
  end
end

describe DockingStation do
  it 'raises an error when releasing a bike from empty dock' do
    expect{ subject.release_bike }.to raise_error 'there are no bikes'
  end
end

describe DockingStation do
  it 'raises an error when docking a bike to the full dock' do
    subject.capacity.times { subject.dock(bike) }
    expect{subject.dock(bike)}.to raise_error 'dock is full'
  end
end

describe DockingStation do
describe 'test with argument' do
  it 'has a capacity equal to argument, error when exceded' do
    docking_station = DockingStation.new(100)
    100.times { docking_station.dock(bike) }
    expect{ docking_station.dock(bike) }.to raise_error 'dock is full'
  end
end
end

describe DockingStation do
describe 'test with default' do
  it 'has a default capacity, error when exceded' do
    docking_station = DockingStation.new
    DockingStation::DEFAULT_CAPACITY.times { docking_station.dock(bike) }
    expect{ docking_station.dock(bike) }.to raise_error 'dock is full'
  end
end
end

describe DockingStation do
  it 'keep broken bikes at the dock' do
    subject.dock(bike)
    subject.dock(bike1)
    bike.broken
    expect(subject.release_bike).to eq bike1
  end
end

describe DockingStation do
  it 'allows user to return either broken or working bike' do
    bike.broken
    subject.dock(bike)
    expect(subject.bikes).to include bike
  end
end
