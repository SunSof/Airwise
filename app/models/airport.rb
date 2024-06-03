class Airport < ApplicationRecord
  self.table_name = 'airports_data'
  scope :match_by_letter, ->(field, letter) { where("#{field} ->> 'en' LIKE ?", "#{letter}%")}
end
