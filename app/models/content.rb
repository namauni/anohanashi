class Content < ApplicationRecord
    
validates :title, presence: true
validates :text, presence: true
belongs_to :user
has_many :comments
has_many :tags, through: :content_qeestion_tags
has_many :favorites, dependent: :destroy

def favorited_by?(user)
    favorites.exists?(user_id: user.id)
end
end