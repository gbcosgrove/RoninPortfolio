class Portfolio < ApplicationRecord
  has_many :technologies
  accepts_nested_attributes_for :technologies, 
                                allow_destroy: true,
                                reject_if: lambda { |attrs| attrs['name'].blank? }
  
  include Placeholder
  validates_presence_of :title, :body, :main_image, :thumb_image

  # mount_uploader :thumb_image, PortfolioUploader
  # mount_uploader :main_image, PortfolioUploader

  # Class method way of setting scopes:
  # def self.ruby_on_rails
  #   where(subtitle: "Ruby on Rails")
  # end

  def self.by_position
    order("position ASC")
  end

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }
  scope :react_js, -> { where(subtitle: "React.js") }
  scope :node_js, -> { where(subtitle: "Node.js") }

  after_initialize :set_defaults

  def set_defaults
    self.main_image ||= Placeholder.image_generator(height: '600', width: '400')
    self.thumb_image ||= Placeholder.image_generator(height: '350', width: '200')
  end

end