class Book
  attr_reader :title

  def title=(new_title)
    little_words = ['A','An','And','The','In','Of']
    word = ''
    new_title = new_title.split.map{|i| i.capitalize}
    word << "#{new_title[0]} "
    new_title.delete_at(0)
    new_title.each do |i|
      if little_words.include?(i)
        i = i.downcase
      end
      word << "#{i} "
    end
    @title = word.rstrip
  end
end
