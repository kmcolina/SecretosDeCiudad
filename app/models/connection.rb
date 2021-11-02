class Connection < ApplicationRecord
  belongs_to :route
  belongs_to :place

   #si falla por fk , dependent: :destroy

end
