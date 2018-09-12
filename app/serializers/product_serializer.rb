class ProductSerializer
  def self.serialize(p)
    s = '{'

    s += '"id": ' + p.id.to_s + ', '
    s += '"name": "' + p.name + '", '
    s += '"price": ' + p.price.to_s + ', '
    s += '"inventory": ' + p.inventory.to_s + ', '
    s += '"description": "' + p.description + '" '

    s += '}'
  end
end
