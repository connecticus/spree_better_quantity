Deface::Override.new(virtual_path: 'spree/admin/products/_form',
  name: 'add_quantities_to_product_edit',
  insert_after: "div[data-hook='admin_product_form_discontinue_on']",
  text: "
    <div data-hook=\"admin_product_form_better_quantity\">
      <%= f.field_container :quantity_unit, class: ['form-group'] do %>
        <%= f.label :quantity_unit, Spree.t(:quantity_unit) %>
        <%= f.text_field :quantity_unit, class: 'form-control' %>
        <%= f.error_message_on :quantity_unit %>
      <% end %>

      <%= f.field_container :quantity_minimum, class: ['form-group'] do %>
        <%= f.label :quantity_minimum, Spree.t(:quantity_minimum) %>
        <%= f.text_field :quantity_minimum, class: 'form-control' %>
        <%= f.error_message_on :quantity_minimum %>
      <% end %>

      <%= f.field_container :quantity_increment, class: ['form-group'] do %>
        <%= f.label :quantity_increment, Spree.t(:quantity_increment) %>
        <%= f.text_field :quantity_increment, class: 'form-control' %>
        <%= f.error_message_on :quantity_increment %>
      <% end %>

      <%= f.field_container :quantity_maximum, class: ['form-group'] do %>
        <%= f.label :quantity_maximum, Spree.t(:quantity_maximum) %>
        <%= f.text_field :quantity_maximum, class: 'form-control' %>
        <%= f.error_message_on :quantity_maximum %>
      <% end %>
    </div>
  "
)