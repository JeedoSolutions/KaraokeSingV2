class TipoProducto < ActiveRecord::Base
    has_many :producto
    
                   
   validates :name,:estado, presence: {message: "Dato Obligatorio"}       
   
   validates :name,  :format => { :with => /\A[a-zA-Z- ]+\z/,
    :message => "Solo letras permitidas" }
end
