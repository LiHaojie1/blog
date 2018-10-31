#Models in Rails use a singular name, and their corresponding database tables use a plural name. 
class Article < ApplicationRecord
    has_many :comments, dependent: :destroy  #destroy comments when article is destroyed.
    #With the validation now in place, when you call @article.save on an invalid article, it will return false.
    validates :title, presence: true,
                      length: { minimum: 5 }
end
    