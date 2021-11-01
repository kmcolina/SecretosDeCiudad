class Connection < ApplicationRecord
  belongs_to :route
  belongs_to :Place

   #si falla por fk , dependent: :destroy

end
