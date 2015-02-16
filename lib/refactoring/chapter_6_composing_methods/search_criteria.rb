class Refactoring::Chapter6ComposingMethods::SearchCriteria
  def initialize(hash)
    @author_id    = hash[:author_id]
    @publisher_id = hash[:publisher_id]
    @isbn         = hash[:isbn]
  end
end
