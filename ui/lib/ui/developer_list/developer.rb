module UI
  module DeveloperList
    class Developer < ActiveRecord::Base
      self.table_name = 'ui_developer_list_read_models'
    end
  end
end