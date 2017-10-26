class ProductSerializer

  def self.serialize(product)
    json_output = '{'
    json_output += format_int(product, 'id')
    json_output += format_string(product, 'name')
    json_output += format_int(product, 'price')
    json_output += format_int(product, 'inventory')
    json_output += format_string(product, 'description')
    json_output = json_output[0...-2] + '}'
    json_output
  end

  def self.format_string(product, field)
    if product.send(field).nil?
      return ""
    else
      output = '"' + field + '": "' + product.send(field) + '", '
    end
  end

  def self.format_int(product, field)
    if product.send(field).nil?
      return ""
    else
      output = '"' + field + '": ' + product.send(field).to_s + ', '
    end
  end

end
