class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name, presence: :true
  validates :last_name, presence: :true

  self.after_create :employee_count, if: :store
  self.after_destroy :employee_uncount, if: :store

  def employee_count
    if self.gender == "F"
      self.store.female_employees += 1
    else
      self.store.male_employees += 1
    end
  end

  def employee_uncount
    if self.gender == "F"
      self.store.female_employees -= 1
    else
      self.store.male_employees -= 1
    end
  end

  def annual_salary
    self.hourly_rate * 1950
  end

  class << self

    def average_hourly_rate_for(gender)
      if gender == 'M'
        where(gender: 'M').average('hourly_rate').round(2)
      elsif gender == 'F'
        where(gender: 'F').average('hourly_rate').round(2)
      else
        average('hourly_rate').round(2)
      end
    end
  end
end
