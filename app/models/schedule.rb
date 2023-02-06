class Schedule < ApplicationRecord

  def is_all_day?
    "○" if is_all_day == true
  end
end
