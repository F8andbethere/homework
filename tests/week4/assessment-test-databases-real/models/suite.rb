class Suite < ActiveRecord::Base
  has_many :bookings

  validates :number, presence: true
  validates :number, length: { maximum: 4 }
  validates :number, uniqueness: true
  validates :rate, numericality: { only_integer: true, greater_than: 0 }
  validates :capacity, numericality: { only_integer: true, greater_than: 0 }

  self.after_destroy :destroy_booking

  def destroy_booking
    self.bookings.find_each do |bookings|
      bookings.destroy
    end
  end
end



# t.string     :number
#     t.integer    :rate
#     t.integer    :capacity
#     t.integer    :revenue, default: 0