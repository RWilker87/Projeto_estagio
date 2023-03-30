class Playlist < ApplicationRecord
  belongs_to :usuario
  has_many :musicas
end
