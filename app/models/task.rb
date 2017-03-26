class Task < ApplicationRecord

  belongs_to :level

  scope :incomplete, -> { where(check: 0) }
  scope :complete, -> { where(check: 1) }

end
