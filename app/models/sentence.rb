class Sentence < ApplicationRecord
  belongs_to :mypic
    translates :content
    belongs_to :user
end
