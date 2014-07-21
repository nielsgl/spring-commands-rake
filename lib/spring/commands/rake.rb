require "spring/commands/rake/version"

module Spring
	module Commands
		class Rake

			class << self
				attr_accessor :environment_matchers
			end

			# Your code goes here...
			def self.hello_world
				puts "hi!"
			end
		end
	end
end
