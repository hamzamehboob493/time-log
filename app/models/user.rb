class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Associations
  belongs_to :organization, optional: true
  has_many :lectures
  has_many :work_logs
  # Enums
  enum role: {teacher: 0, student: 1, admin: 2}
  # Validations
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates_presence_of :encrypted_password

  def current_month_logged_time
    work_logs_in_month = work_logs.where(start_time: Time.now.beginning_of_month.beginning_of_week..Time.now.end_of_month.end_of_week)
    work_logs_in_month.sum do |work_log|
      (work_log.end_time - work_log.start_time).to_i / 1.hour.to_i
    end
  end
end
