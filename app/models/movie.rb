class Movie < ApplicationRecord
  # Direct associations

  has_many   :castings,
             :foreign_key => "film_id",
             :dependent => :destroy

  belongs_to :director

  # Indirect associations

  has_many   :actors,
             :through => :castings,
             :source => :actor

  # Validations

end
