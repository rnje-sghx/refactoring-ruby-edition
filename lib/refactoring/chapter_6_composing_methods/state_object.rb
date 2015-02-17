class StateObject
  def state=(state)
    @state = state
  end

  def_each :failure, :error, :success do |method_name|
    self.state = method_name
  end
end
