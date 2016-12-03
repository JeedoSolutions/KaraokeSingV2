class Evento < ActiveRecord::Base
  belongs_to :local
  
   validates :local,  :capacidad,  :descripcion ,presence: {message: "Dato Obligatorio"}
   
     validates :capacidad, :numericality => { :only_integer => true,
    :message => "Solo números permitidos" }  
    
     validates :descripcion, length: { maximum: 255, 
        too_long: "Máximo %{count} caractéres permitido" }
   def local_name
      self.local.No_Local
  end
end
