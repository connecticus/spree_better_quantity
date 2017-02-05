(Spree::PermittedAttributes.class_variable_get("@@product_attributes") << [
  :quantity_unit, :quantity_minimum, :quantity_increment, :quantity_maximum
]).flatten!