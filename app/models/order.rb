class Order < ActiveRecord::Base
  belongs_to :organizer, foreign_key: "user_id", class_name: "User"
  belongs_to :buyer, foreign_key: "user_id", class_name: "User"
  belongs_to :deal
end
