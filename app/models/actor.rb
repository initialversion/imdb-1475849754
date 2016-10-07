class Actor < ApplicationRecord
  # Direct associations

  has_many   :castings,
             :dependent => :destroy

  # Indirect associations

  has_many   :films,
             :through => :castings,
             :source => :film

  # Validations

end
