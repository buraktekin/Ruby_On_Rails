#This file is important to:
# basic database CRUD (Create, Read, Update, Destroy)
# operations, data validation, as well as sophisticated
# search support and the ability to relate multiple
# models to one another.

class Article < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            length: { minimum: 5 }
end