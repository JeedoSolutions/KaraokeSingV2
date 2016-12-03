class Reserva < ActiveRecord::Base
  belongs_to :sala
  belongs_to :user
  belongs_to :local
  
  validates :sala,:descripcion,:user, presence: {message: "Dato Obligatorio"}

     validates :descripcion, length: { maximum: 255, 
        too_long: "Máximo %{count} caractéres permitido" }
     
  
  def sala_name
      self.sala.descripcion
  end
  def user_name
      self.user.nombre
  end
  
  def local_name
     self.local.No_Local
  end
  
end
