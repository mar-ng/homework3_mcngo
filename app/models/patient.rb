class Patient < ApplicationRecord
    has_many :appointment
    has_one :physician
end
