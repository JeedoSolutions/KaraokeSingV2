class Sala < ActiveRecord::Base
  belongs_to :local 
  has_many :reserva
    validates :local, presence: true
  
 
    validates :no_sala,  :qt_capacidad, :descripcion, presence: {message: "Dato Obligatorio"}
    
    validates :no_sala, :numericality => { :only_integer => true,
    :message => "Solo números permitidos" }  
      
    validates :qt_capacidad, 
         numericality: { greater_than_or_equal_to: 0,message: "La capacidad debe ser mayor que cero"}
                 
    validates :descripcion, length: { maximum: 255, 
        too_long: "Máximo %{count} caractéres permitido" }
                   
   def local_name
      self.local.No_Local
   end
   
end
