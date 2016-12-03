class Local < ActiveRecord::Base
    has_many :sala 
    has_many :evento
    has_many :inventario
    has_many :reserva
    
      validates :No_Local,:No_Direccion,:Tx_Correo, :Nu_Telefono, presence: {message: "Dato Obligatorio"}
 
  
    validates :No_Local, :format => { :with => /\A[a-zA-Z- ]+\z/,
    :message => "Solo letras permitidas" }
    
     validates :Nu_Telefono, length: { minimum: 7,
    
    too_short: "Mínimo %{count} caractéres permitido" }
    
    validates :Nu_Telefono, length: { maximum: 9,
    
    too_long: "Máximo %{count} caractéres permitido" }
    
    
    
    validates :Tx_Correo, email_format: { message: "Esto no luce como un mail" }
    
    validates :Nu_Telefono, :numericality => { :only_integer => true,
    :message => "Solo números permitidos" }  
    
    
     #attr_accessible :id, :descripcion
     

    logger.debug "<<<<< LOCAL 1 #{ self.inspect}>>>>> "
    #logger.debug "<<<<< LOCAL 2 #{ self.locals.no_local}>>>>> "
    #logger.debug "<<<<< LOCAL 3 #{ self.locals.id}>>>>> "
    
    
end

