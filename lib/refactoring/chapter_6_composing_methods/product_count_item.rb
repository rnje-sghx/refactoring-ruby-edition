class Refactoring::Chapter6ComposingMethods::ProductCountItem
  def self.find_all_by_criteria(criteria)
    []
  end

  def product_count_items(search_criteria)
    ProductCountItem.find_all_by_criteria(search_criteria)
  end
end
