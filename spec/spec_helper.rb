require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'

require_relative '../services/contatos_service.rb'
require_relative '../services/criar_service.rb'
require_relative '../services/login_services.rb'
require_relative '../services/cadastrar_service.rb'

# @rspec_yml = YAML.load_file("#{Dir.pwd}/support/rspec.yml")
# @ambiente = @rspec_yml['ambiente']
# CONFIG = YAML.load_file("#{Dir.pwd}/support/data/#{@ambiente}.yml")

RSpec.configure do |config|
  include Contato
  include Login
  include Cadastrar
  include Criar
  config.color = true
  config.formatter = :documentation
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
