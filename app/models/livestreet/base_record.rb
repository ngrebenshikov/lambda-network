# frozen_string_literal: true

module Livestreet
  class BaseRecord < ApplicationRecord
    self.table_name_prefix = 'ls_'
    self.pluralize_table_names = false
    self.abstract_class = true

    connects_to database: { reading: :livestreet, writing: :livestreet }
  end
end
