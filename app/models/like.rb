class Like < ApplicationRecord
  belongs_to :Author_id
  belongs_to :Post_id
end
