class Application < ActiveRecord::Base
  belongs_to :user
  has_many :events
  has_many :clicks
end
