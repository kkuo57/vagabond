class City < ApplicationRecord

  has_many :articles, dependent: :destroy
  has_many :users, through: :articles

  def name
    @name = city_name
  end

end
