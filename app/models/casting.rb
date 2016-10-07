class Casting < ApplicationRecord
  # Direct associations

  belongs_to :film,
             :class_name => "Movie"

  # Indirect associations

  # Validations

  validates :film_id, :presence => true

end
