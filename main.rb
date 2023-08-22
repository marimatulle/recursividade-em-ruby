def mdec_recursive(s)
  if s.length == 1
    puts "Mdec(<#{s}>) = #{s}"
    return s.to_i
  else
    prefix = s[0..-2]
    last_digit = s[-1]


    sub_result = mdec_recursive(prefix)
    result = 10 * sub_result + last_digit.to_i


    puts "Mdec(<#{prefix}> '#{last_digit}') = 10 * Mdec(<#{prefix}>) + #{last_digit} = #{result}"
    return result
  end
end

number = "756"
result = mdec_recursive(number)
puts "Final result: #{result}"