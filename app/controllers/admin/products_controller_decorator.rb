Spree::Admin::ProductsController.class_eval do
  
  update.before :handle_marked_for_clearance 
  
  attr_accessor :handled_marked_for_clearance
  
  protected
  
  def handle_marked_for_clearance    
    return if self.handled_marked_for_clearance # prevent double callback!
    
    if (params[:product] || {}).delete(:marked_for_clearance).blank?
      @product.unmark_for_clearance
    else
      @product.mark_for_clearance
    end
    
    self.handled_marked_for_clearance = true
  end
  
end