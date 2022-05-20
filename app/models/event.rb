class Event < ApplicationRecord
    validates :start_date, :duration, :title, :description, :price, :location, presence: :true
    validates :title, length: {in: 5..140} 
    validates :description, length: {in: 20..1000} 
    validates :price, numericality: {in: 1..1000}
    has_many :attendances
    has_many :attendees, class_name: "User", through: :attendances
    belongs_to :admin, class_name: "User"
end
