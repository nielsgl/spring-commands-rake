module Spring
	module Commands
		class Rakemagic

			class << self
				attr_accessor :environment_matchers
			end

			self.environment_matchers = {
				default: 'test',
				/^test($|:)/ => 'test'
			}

			def env(args)
				if env = args.grep(/^(RAILS|RACK)_ENV=(.*)$/m).last
					return env.split("=").last
				end

				self.class.environment_matchers.each do |matcher, environment|
					return environment if matcher === (args.first || :default)
				end

				nil

			end

			# def env(*)
			# 	"test"
			# end

			# def exec_name
			# 	"rakemagic"
			# end

			# def gem_name
			# 	"rspec-core"
			# end

		end

		Spring.register_command "rakemagic", Rakemagic.new
	end
end
