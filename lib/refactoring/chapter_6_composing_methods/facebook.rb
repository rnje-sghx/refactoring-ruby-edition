class Refactoring::Chapter6ComposingMethods::Facebook
  def found_friends(people)
    people.select do |person|
      %w(Don John Kent).include?(person)
    end
  end
end
