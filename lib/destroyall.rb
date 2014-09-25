require "destroyall/version"

module Destroyall
  def self.destroy_all(model)
    if model.nil?
    else
      model.delete_all
    end
  end
  def self.destroy_all_with_conditions(model, conditions, conditions_value)
    if model.nil? || conditions.nil? || conditions_value.nil?
    else
      conditions_sym = conditions.parameterize.underscore.to_sym
      model.delete_all(conditions_sym => "#{conditions_value}")
    end
  end
end
