class Post < ApplicationRecord
    validates :title, :content, presence: true
    validates :title, uniqueness: true, length: { maximum: 50 }

    belongs_to :user
    has_many :comments
end
