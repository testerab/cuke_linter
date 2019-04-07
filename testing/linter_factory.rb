module CukeLinter
  module LinterFactory

    def self.generate_fake_linter(name: 'FakeLinter')
      linter = Object.new

      linter.define_singleton_method('lint') do |model|
        location = model.respond_to?(:source_line) ? "#{model.get_ancestor(:feature_file).path}:#{model.source_line}" : model.path
        problem  = @problem || "#{name} problem"

        [{ problem:  problem,
           location: location }]
      end

      linter.define_singleton_method('name') do
        name
      end

      linter.define_singleton_method('configure') do |options|
        @problem = options['Problem'] if options['Problem']
      end


      linter
    end

  end
end
