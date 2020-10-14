class Robot
  attr_accessor :name

  # def initialize(name = nil)
  #   @name = name
  # end

  def setup
    reset
    2.times { @name += random_letter }
    3.times { @name += rand(10).to_s }
  end

  def self.forget
  end

  def reset
    @name = ''
  end

  private

  def random_letter
    ('A'..'Z').to_a[rand(26) + 1]
  end
end
