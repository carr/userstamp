require 'migration_helper'
ActiveRecord::Base.send(:include, ActiveRecord::Userstamp) if defined?(ActiveRecord)

