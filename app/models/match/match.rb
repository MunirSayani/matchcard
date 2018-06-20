class Match < ApplicationRecord
  belongs_to :PayPerView, optional: true
  
  has_many :contenders
  accepts_nested_attributes_for :contenders, :allow_destroy => true,
  :reject_if => proc { |att| att[:name].blank? }
end
