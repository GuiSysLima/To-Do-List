class Member < ApplicationRecord
    has_many :tasks, dependent: :destroy
  
    validates :name, presence: true, length: { minimum: 5 }
    validates :email, presence: true, uniqueness: true
end
