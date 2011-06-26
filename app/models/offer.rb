# valid pricing_types:
# 'horas', 'unidades', 'dias'
#
class Offer < ActiveRecord::Base

  def self.pricing_types
    ['unidades','horas']
  end

end
