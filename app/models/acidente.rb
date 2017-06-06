class Acidente < ActiveRecord::Base
    has_many :comentarios
end
