class Mymapstuff < ApplicationRecord
  belongs_to :mypic
    translates :title
    belongs_to :user
end
