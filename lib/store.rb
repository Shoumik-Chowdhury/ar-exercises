class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: { minimum: 3 }
  validates :annual_revenue, numericality: { greater_than: 0 }
  validate :men_or_women_apparel

  def men_or_women_apparel 
    if (mens_apparel == false && womens_apparel == false)
      errors.add(:mens_apparel, "Men or womens apparel has to be true")
    end
  end
end
