class PayPerView < ApplicationRecord
  has_many :matches
  accepts_nested_attributes_for :matches, :allow_destroy => true,
  :reject_if => proc { |att| att[:name].blank? }

end
