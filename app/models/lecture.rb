class Lecture < ApplicationRecord
  belongs_to :user
  has_one :work_log

  validates :user_id, presence: true
end
