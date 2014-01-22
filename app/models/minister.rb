class Minister < ActiveRecord::Base
  validates :name, presence: true
end
