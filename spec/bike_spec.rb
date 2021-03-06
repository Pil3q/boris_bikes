require 'bike'
describe Bike do
  it { is_expected.to respond_to(:working?)  }
end

describe Bike do
    it { is_expected.to respond_to(:broken) }
end

describe Bike do
  it 'changes bike status after report' do
  subject.broken
  expect(subject.working?).to eq false
end
end

describe Bike do
  it 'expect bike to working? or not' do
    expect(subject.working?).to eq true
  end
end
