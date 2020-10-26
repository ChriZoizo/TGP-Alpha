class Gossip < ApplicationRecord
    has_many :tags, through: :gossip_tags
    belongs_to :user
end