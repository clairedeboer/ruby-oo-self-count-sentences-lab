require 'pry'

class String

  def sentence?
     self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    string_array = self.split(" ")
    new_array = string_array.filter do |word|
      word.exclamation? || word.sentence? || word.question? 
     end
    new_array.count
  end
end