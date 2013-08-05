require 'atm.rb'

describe 'withdraw' do
  context 'with valid value and total' do
    subject { withdraw(30, 120) }
    it { should == 89.5 }
  end

  context 'with a value non-divisible by 5' do
    subject { withdraw(32, 120) }
    it { should == 120 }
  end

  context 'with invalid inputs' do
    subject { withdraw(-1, -1) }
    it { expect { subject }.to raise_error }
  end
end