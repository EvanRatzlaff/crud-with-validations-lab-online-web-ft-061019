class Song < ApplicationRecord

    validates :title, presence: true
    validates :title, uniqueness: {scope: %i[release_year artist_name], message: "cannot be repeated"}
    validates :release_year, numericality: {less_than_or_equal_to: Date.today.year}, :if => :released?
    validates :artist_name, presence: true
    validates :released, inclusion: { in: [true, false] }
    


end
