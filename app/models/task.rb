class Task < ApplicationRecord
  belongs_to :member
    
  validates :name, presence: true, length: { minimum: 5, maximum: 50 }
  validates :description, length: { maximum: 140 }
  validates :finished, inclusion: { in: [true, false] }
  validates :priority, presence: true, inclusion: { in: %w[Baixa Média Alta] }
  
  before_validation :set_default_priority, on: :create

  private
  
  def set_default_priority
    self.priority ||= 'Baixa'
  end
end
