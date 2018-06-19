class PayPerView < ApplicationRecord
  has_many :matches
  accepts_nested_attributes_for :matches, :allow_destroy => true,
  :reject_if => proc { |att| att[:name].blank? }


  def self.possible_contenders
    ['John Cena', 'AJ Styles']
  end

  def self.possible_tag_contenders
    ['The USOS', 'Deleter of Worlds']
  end
end
