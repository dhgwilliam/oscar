module Oscar
  require 'oscar/version'
  require 'oscar/plugin'

  def self.source_root
    @source_root ||= File.expand_path('..', __FILE__)
  end

  def self.template_root
    @template_root ||= File.expand_path('../templates', source_root)
  end

  require 'oscar/runner'
  extend Oscar::Runner
end

I18n.load_path << File.join(Oscar.template_root, 'locales/en.yml')
