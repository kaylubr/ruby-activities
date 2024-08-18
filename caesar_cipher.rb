def caesar_cipher(string, key)
  codes = string.bytes

  new_string = codes.map do |num|
    if num >= 65 && num <= 90
      num += key
      if num > 90
        num -= 26
      end
      num
    elsif num >= 97 && num <= 122
      num += key
      if num > 122
        num -= 26
      end
      num
    else
      num
    end
  end

  new_string.pack("c*")
end

p caesar_cipher("What a string!", 5)