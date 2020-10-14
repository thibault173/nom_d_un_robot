class Robot
  attr_reader :name

  def first_start
    @name = ''
    2.times { @name += random_letter }
    3.times { @name += rand(10).to_s }
  end

  private

  def random_letter
    ('A'..'Z').to_a[rand(26) + 1]
  end
end
