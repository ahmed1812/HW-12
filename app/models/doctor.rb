class Doctor < ActiveRecord::Base
      has_many :patients
           

validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
validates_format_of :phone_number, with: /\A\(?\d{3}\)?[- ]?\d{3}[- ]?\d{4}\z/  
     validates_uniqueness_of :first_name , :last_name  ,scope: [:first_name ,:last_name]


   
          def full_name 
         "#{first_name} #{last_name}"
     end
     
     
end