# frozen_string_literal: true

ENV['RAILS_ENV'] = 'test'
require_relative './dummy/config/environment'
require 'rails/test_help'

require 'rails/test_unit/reporter'
Rails::TestUnitReporter.executable = 'bin/test'

# FIXME: webpacker is not checking properly if files processed by webpack should be re-bundled or not.
`rm -rf test/dummy/public/*`
