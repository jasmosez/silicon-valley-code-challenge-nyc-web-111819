class FundingRound

  attr_reader :startup, :venture_capitalist, :type, :investment

  @@all = []

  def initialize(startup, venture_capitalist, type, investment)
    @startup = startup
    @venture_capitalist = venture_capitalist
    @type = type
    if investment >= 0
      @investment = investment.to_f
    else
      @investment = 0.0
    end 

    self.class.all << self
  end

  def self.all
    @@all
  end

end
