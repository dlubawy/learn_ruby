def echo(phrase)
  phrase
end

def shout(phrase)
  phrase.upcase
end

def repeat(phrase, n = 2)
  phrase.concat(' ')
  phrase = phrase * n
  phrase.rstrip
end

def start_of_word(phrase, n = 1)
  reply = ''
  i = n
  while n > 0
    reply.concat(phrase[i-n])
    n -= 1
  end
  reply
end

def first_word(phrase)
  phrase = phrase.split(/ /)
  phrase = phrase[0]
  phrase
end

def titleize(phrase)
  reply = ''
  phrase = phrase.split.map{|i| i.capitalize}
  reply.concat(phrase[0] + ' ')
  phrase.delete_at(0)
  phrase.each do |i|
    if i.length < 5 && i != phrase[phrase.length - 1]
      i = i.downcase
    end
    reply.concat(i + ' ')
  end
  reply.rstrip
end
