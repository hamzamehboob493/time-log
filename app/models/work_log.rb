class WorkLog < ApplicationRecord
  belongs_to :user
  belongs_to :lecture

  validates :user_id, presence: true
  validates :lecture_id, presence: true
  validate :start_time_cannot_be_in_future
  validate :end_time_cannot_be_in_future

  def start_time_cannot_be_in_future
    if start_time.present? && start_time > Date.today
      errors.add(:start_time, "can't be in the future")
    end
  end

  def end_time_cannot_be_in_future
    if end_time.present? && end_time > Date.today
      errors.add(:end_time, "can't be in the future")
    end
  end
end
