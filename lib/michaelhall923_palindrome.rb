require "michaelhall923_palindrome/version"

module Michaelhall923Palindrome
  def palindrome?
    processed_content.length > 0 ? processed_content == processed_content.reverse : false
  end

  private

    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include Michaelhall923Palindrome
end

class Integer
  include Michaelhall923Palindrome
end
