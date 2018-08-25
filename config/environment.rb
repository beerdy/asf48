#coding utf-8

require "unicode"

class String
   def downcase
     Unicode::downcase(self)
   end
   def downcase!
     self.replace downcase
   end
   def upcase
     Unicode::upcase(self)
   end
   def upcase!
     self.replace upcase
   end
   def capitalize
     Unicode::capitalize(self)
   end
   def capitalize!
     self.replace capitalize
   end
end

require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!
