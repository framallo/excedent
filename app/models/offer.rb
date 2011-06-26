# valid pricing_types:
# 'horas', 'unidades', 'dias'
#
class Offer < ActiveRecord::Base

  named_scope :smart_find, lambda { |q| { 
    :conditions => " to_tsvector('english', title) @@ to_tsquery('english', '#{q}') "
  } }

  def initialize(attributes = nil)
    attributes ||= {}
    attributes[:starts_at] ||= DateTime.now.strftime("%m-%d-%Y")
    attributes[:ends_at]   ||= DateTime.now.strftime("%m-%d-%Y")
    super
  end



  def self.pricing_types
    ['unidades','horas']
  end

  def self.offer_types
    ['ofrece','busca']
  end

end
