Product.class_eval do
  
  scope :marked_for_clearance, where("products.marked_for_clearance_at IS NOT NULL").order("marked_for_clearance_at DESC")
  
  scope :ascend_by_marked_for_clearance_at, order("products.marked_for_clearance_at ASC")
  scope :descend_by_marked_for_clearance_at, order("products.marked_for_clearance_at DESC")
  
  scope :ascend_by_clearance, order("products.marked_for_clearance_at ASC, products.updated_at ASC")
  scope :descend_by_clearance, order("products.marked_for_clearance_at DESC, products.updated_at DESC")
  
  def mark_for_clearance
    self.update_attribute(:marked_for_clearance_at, Time.current)
  end

  def unmark_for_clearance
    self.update_attribute(:marked_for_clearance_at, nil)
  end
    
  def marked_for_clearance?
    not marked_for_clearance_at.blank?
  end
  
end