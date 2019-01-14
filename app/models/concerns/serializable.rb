require 'json'
module Serializable

    def to_json
        hash = {}
        self.instance_variables.each do |var|
            hash[var] = self.instance_variable_get var
        end
        hash[:@attributes].to_json
    end

end