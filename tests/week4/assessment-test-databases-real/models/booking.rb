class Booking < ActiveRecord::Base
  belongs_to :suite

  validates :full_name, presence: true
  validates :full_name, length: { maximum: 50 }
  validates :guests, numericality: { only_integer: true, greater_than: 0, less_than: 5 }

  after_create :increase_revenue

  def nights
    checkout - checkin
  end

  def market_cost
    nights * suite.rate
  end

  def final_cost
    market_cost - (nights * discount_per_night)
  end

  def increase_revenue
    # self.suite.sum(:revenue)
    # self.suite.all.sum('revenue') + final_cost
  end
end

    # Employee.all.sum('hourly_rate') * 1950
# def annual_expense
#     expense = Employee.annual_salary.all
#     t = expense.inject { |sum,s| + s}
#     t
# end

# [1, 2, 3, 4].inject(0) { |result, element| result + element } # => 10