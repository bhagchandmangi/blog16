class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  #scope :display, -> { find.all }
end
