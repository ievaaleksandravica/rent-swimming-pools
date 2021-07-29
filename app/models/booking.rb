class Booking < ApplicationRecord
  belongs_to :pool
  belongs_to :user

  validate :valid_dates

  def valid_dates
    if start_date > end_date
      self.errors.add :start_date, 'Start Date has to be before end date'
    end
  end
end
