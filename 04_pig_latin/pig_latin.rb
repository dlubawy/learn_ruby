def pig_latin(word)
  if word.start_with?('a','e','i','o','u')
    word.concat('ay')
  elsif word.start_with?('qu')
    first = word.slice!(0..1)
    word << "#{first}ay"
  else
    first = word.slice!(0).downcase
    if word.start_with?('a','e','i','o','u')
      word << "#{first}ay"
    elsif word.start_with?('qu')
      second = word.slice!(0..1)
      word << "#{first}#{second}ay"
    else
      second = word.slice!(0)
      if word.start_with?('a','e','i','o','u')
        word << "#{first}#{second}ay"
      else
        third = word.slice!(0)
        word << "#{first}#{second}#{third}ay"
      end
    end
  end
end

def translate(words)
  punctuation = ''
  if words.end_with?('.','?','!')
    punctuation = words.slice!(-1)
  end
  holder = words.split
  index = []
  words = words.split
  words.map{|i| pig_latin(i)}
  holder.each do |j|
    if j.capitalize! == nil
      index.push(holder.index(j))
    end
  end
  k = 0
  while k < index.length do
    words[index[k]] = words[index[k]].capitalize
    k+=1
  end
  words = words.join(' ')
  words = words.rstrip
  words << punctuation
end
