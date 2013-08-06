##
## X would like to withdraw X $US from an ATM. 
## The cash machine will only accept the transaction if X is a multiple of 5, 
## and X's account balance has enough cash to perform the withdrawal transaction 
## (including bank charges). For each successful withdrawal the bank charges 0.50 $US.
## 
## Calculate X's account balance after an attempted transaction.
## 
## Input
## Positive integer 0 < X <= 2000 - the amount of cash which X wishes to withdraw.
## Nonnegative number 0<= Y <= 2000 with two digits of precision - Pooja's initial account balance.

## Output
## Output the account balance after the attempted transaction, given as a number with two digits of precision. 
## If there is not enough money in the account to complete the transaction, output the current bank balance.
##

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
