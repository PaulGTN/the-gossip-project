class Gossip < ApplicationRecord
  belongs_to :user
  has_many :gossip_tags
  has_many :tags, through: :gossip_tags
  has_many :comments
  has_many :likes
  validate :title, presence: true, lenght: { in: 3..14}
  validate :content, presence: true
end
