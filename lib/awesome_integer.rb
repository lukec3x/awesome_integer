require "awesome_integer/version"
require "colorize"

module AwesomeInteger
  class Error < StandardError; end

  def self.format(number, color = :black)
		number.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1 ').reverse.colorize(color)
	end
end
