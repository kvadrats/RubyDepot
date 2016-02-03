class Product < ActiveRecord::Base
	def self.latest
		Product.order('updated_at').last
	end

validates :title, :description, :image_url, presence: true	
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness:true
validates :image_url, format: {
		  with: %r{\.(gif|jpg|png|jpeg|)\Z}i,
		  message: 'must be an URL for gif, jpg, png or jpeg image!'
}
end
