require "darshanp_palindrome/version"

# module DarshanpPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end
# class String

#   # Returns true for a palindrome, false otherwise.
#   def palindrome?
#     processed_content == processed_content.reverse
#   end

#   # Returns the letters in the string.
#   def letters
#     the_letters = []
#     # for i in 0..self.length - 1 do
#     #   if self[i].match(/[a-zA-Z]/)
#     #     the_letters << self[i]
#     #   end
#     # end
#     # the_letters.join
#     # letter_regex = /[a-z]/i
#     # self.chars.each do |character|
#     #   if character.match(letter_regex)
#     #     the_letters << character
#     #   end
#     # end
#     # the_letters.join
#     self.chars.select { |c| c.match(/[a-z]/i) }.join
#   end

#   private

#     # Returns content for palindrome testing.
#     def processed_content
#       # self.letters.downcase
#       self.to_s.scan(/[a-zA-Z\d]/i).join.downcase
#     end
# end

module DarshanpPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-zA-Z\d]/i).join.downcase
    end
end

class String
  include DarshanpPalindrome
end

class Integer
  include DarshanpPalindrome
end