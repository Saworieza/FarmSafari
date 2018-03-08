class Product < ApplicationRecord
  extend FriendlyId
  friendly_id :name, use: :slugged
  
  has_attached_file :image, styles: { large: "750x500#",  medium: "500x300#", thumb: "100x100>" }, default_url: "700x400.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :category
  belongs_to :user


  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end

end
