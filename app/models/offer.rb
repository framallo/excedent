# valid pricing_types:
# 'horas', 'unidades', 'dias'
#
class Offer < ActiveRecord::Base

  named_scope :smart_find, lambda { |q| { 
    :conditions => " to_tsvector('english', title) @@ to_tsquery('english', '#{q}') "
  } }


  def self.pricing_types
    ['unidades','horas']
  end

end
