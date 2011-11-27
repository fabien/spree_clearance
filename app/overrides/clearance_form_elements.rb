Deface::Override.new(
  :virtual_path => "admin/products/_form",
  :name => "clearance_form_elements",
  :insert_bottom => "[data-hook='admin_product_form_right']",
  :partial => "admin/products/clearance_form_elements",
  :disabled => false)