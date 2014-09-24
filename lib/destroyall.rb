require "destroyall/version"

module Destroyall
  def self.destroy_all(model)
    model.delete_all
  end
  def self.destroy_all_with_conditions(model, conditions, conditions_value)
    conditions_sym = conditions.parameterize.underscore.to_sym
    model.delete_all(conditions_sym => "#{conditions_value}")
  end
end
