class ATM
  attr_accessor :value, :total

  def initialize(value, total)
    @value = value
    @total = total
  end

  def validate
    if @value <= 0 || @total <= 0
      raise RuntimeError
    end
  end

  def process
    if @value%5 != 0 || @value > (@total-0.5)
      puts @total
      return @total
    end

    @total = @total - @value - 0.5
    puts @total
    @total
  end
end

def withdraw(first, second)
  #first, second = gets.chomp.split("\s")
  atm = ATM.new(first.to_i, second.to_i)
  atm.validate
  atm.process
end