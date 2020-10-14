class Robot
  @@names = []
  attr_accessor :name

  def initialize
    @name = nil
  end

  def name
    @name ||= uniq_random_name
    @@names << @name
    @name
  end

  def self.forget
  end

  def reset
    @name = uniq_random_name
    @@names << @name
  end

  private

  def uniq_random_name
    v = random_name
    while @@names.include? v
      v = random_name
    end
    v
  end

  def random_name
    random_letter + random_letter +
    rand(10).to_s +
    rand(10).to_s +
    rand(10).to_s
  end

  def random_letter
    ('A'..'Z').to_a[rand(26) + 1]
  end
end
