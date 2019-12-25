#tutorial uses ActiveRecord::Base....I'm going to leave defaul ApplicationRecord...as I believe I'm using a more recent version of Rails, and ApplicationRecord seems to be the new terminolgy to inherit from; yep...ApplicationRecord still inherits from ActiveRecord::Base....but it's an added layer from source code? maybe....
class Comment < ApplicationRecord
  belongs_to :article
end
