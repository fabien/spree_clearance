Admin::ProductsController.class_eval do
  
  update.before :handle_marked_for_clearance
  
  protected
  
  def handle_marked_for_clearance
    if (params[:product] || {}).delete(:marked_for_clearance).blank?
      @product.unmark_for_clearance
    else
      @product.mark_for_clearance
    end
  end
  
end