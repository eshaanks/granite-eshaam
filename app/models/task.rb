class Task < ApplicationRecord
  MAX_TITLE_LENGTH = 125
  validates :body, presence: true, length: { maximum: MAX_TITLE_LENGTH }
end

