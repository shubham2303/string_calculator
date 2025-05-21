class StringCalculator

  def self.add(numbers)
    return 0 if numbers.empty?
    if numbers.length == 1
      numbers.to_i
    end
    numbers.split(",").map(&:to_i).sum
  end
end