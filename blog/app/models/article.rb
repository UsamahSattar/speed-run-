class Article < ApplicationRecord
end

class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }
end

class Article < ApplicationRecord
  has_many :comments
  validates :title, presence: true,
                    length: { minimum: 5 }
end

resources :articles do
  resources :comments
end

class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
                    length: { minimum: 5 }
end