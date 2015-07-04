class Objective < ActiveRecord::Base

  belongs_to :user

  validates :name, presence: true
  validates :due_year, presence: true
  validates :due_quarter, presence: true

end
