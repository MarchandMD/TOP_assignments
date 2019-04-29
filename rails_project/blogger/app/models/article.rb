#Am not going to be removing ApplicationRecord and adding ActiveRecord::Base
class Article < ApplicationRecord
    has_many :comments
end
