class StringCalculator

  def self.add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter, numbers = numbers.split("\n", 2)
      delimiter = Regexp.escape(delimiter[2])
      parts = numbers.split(/#{delimiter}|\n|,/)
    else
      parts = numbers.split(/,|\n/)
    end

    nums = parts.map(&:to_i)
    negatives = nums.select { |n| n < 0 }

    if negatives.any?
      raise "negative numbers not allowed #{negatives.join(',')}"
    end

    nums.sum
  end
end