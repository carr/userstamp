module Userstamp
  module MigrationHelper
    def self.included(base) # :nodoc:
      base.send(:include, InstanceMethods)
    end

    module InstanceMethods
      def userstamps
        column(:created_by, :integer)
        column(:updated_by, :integer)
      end
    end
  end
end
ActiveRecord::ConnectionAdapters::TableDefinition.send(:include, Userstamp::MigrationHelper)

