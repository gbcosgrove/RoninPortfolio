class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image

  scope :ruby_on_rails, -> { where(subtitle: "Ruby on Rails") }
  scope :react_js, -> { where(subtitle: "React.js") }
  scope :node_js, -> { where(subtitle: "Node.js") }
end
