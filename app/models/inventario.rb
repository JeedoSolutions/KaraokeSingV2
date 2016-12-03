class Inventario < ActiveRecord::Base
  belongs_to :local
  belongs_to :producto
  
  def local_name
    self.local.No_Local
  end
  def producto_name
    self.producto.name
  end
  
      
      validates :cant,:precio_compra,:precio_venta,  presence: {message: "Dato Obligatorio"}
                    
    validates :cant, presence: true, 
                 numericality: { greater_than_or_equal_to: 0,message: "La debe ser mayor que cero" }
    
      validates :precio_compra, presence: true, 
                 numericality: { greater_than_or_equal_to: 0,message: "El precio debe ser mayor que cero" }
    
      validates :precio_venta, presence: true, 
                 numericality: { greater_than_or_equal_to: 0,message: "El precio debe ser mayor que cero" }

end
