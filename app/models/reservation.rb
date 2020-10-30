class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :trait
  validates :end_date, presence: true
  validates :start_date, presence: true, date: { after_or_equal_to: Proc.new { Date.today }, message: "must be at least #{(Date.today + 1).to_s}" }, on: :create
  validate :end_date_is_after_start_date

  def end_date_is_after_start_date
    return if end_date.blank? || start_date.blank?

    if end_date < start_date
      errors.add(:end_date, "cannot be before the start date")
    end
  end
end
