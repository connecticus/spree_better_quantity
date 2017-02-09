(Spree::PermittedAttributes.class_variable_get("@@product_attributes") << [
  :quantity_minimum,
  :quantity_unit,
  :quantity_increment,
  :quantity_maximum
]).flatten!