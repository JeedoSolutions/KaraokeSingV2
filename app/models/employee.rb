class Employee < ActiveRecord::Base
    
    
    validates :nombre, :apellido, :dni, :correo, :password, presence: {message: "Dato Obligatorio"}
 
    validates :dni, length: { minimum: 8,
    
    too_short: "Mínimo %{count} caractéres permitido" }
    
    validates :dni, length: { maximum: 8,
    
    too_long: "Máximo %{count} caractéres permitido" }
    
    validates :nombre, :apellido, :format => { :with => /\A[a-zA-Z- ]+\z/,
    :message => "Solo letras permitidas" }
    
    validates :dni, :numericality => { :only_integer => true,
    :message => "Solo números permitidos" }  
    
    validates :password, length: { minimum: 8,
    
    too_short: "Mínimo %{count} caractéres permitido" }
    
    validates :password, length: { maximum: 12,
    
    too_long: "Máximo %{count} caractéres permitido" }
    
    validates :correo, email_format: { message: "Esto no luce como un mail" }
    
end
