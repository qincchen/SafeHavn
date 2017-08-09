class Home < ActiveRecord::Base
  validates :lat, :lng, :price, :host, :title, :description, presence: true
  validates :cancellation, inclusion: { in: %w(Strict Moderate Flexible)}

  has_attached_file :image, default_url: "home2.jpg"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

  belongs_to :host,
    class_name: :User,
    foreign_key: :host_id

  has_many :trips,
    class_name: :Trip,
    foreign_key: :home_id

  has_many :reviews,
    class_name: :Review,
    foreign_key: :home_id

  has_many :visitors,
    through: :trips,
    source: :visitor

  def average_review
    sum = 0
    self.reviews.each do |review|
      sum += review.rating
    end
    sum/self.reviews.length
  end

  def self.in_bounds(bounds)
  self.where("lat < ?", bounds[:northEast][:lat])
      .where("lat > ?", bounds[:southWest][:lat])
      .where("lng > ?", bounds[:southWest][:lng])
      .where("lng < ?", bounds[:northEast][:lng])
  end



end
