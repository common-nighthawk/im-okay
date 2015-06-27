class Message < ActiveRecord::Base
  validates :text, presence: true
  validates :ip_address, presence: true
end
