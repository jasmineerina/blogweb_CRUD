class Post < ApplicationRecord
    has_many :comments , dependent: :destroy
    belongs_to :user
    
    validates :title, presence: true, length: {minimum: 1, maximum: 50}
    validates :content, presence: true, length: {minimum: 5, maximum: 500}
end
