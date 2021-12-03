class IO::Memory < IO
  def resize(capacity)
    self.resize_to_capacity(capacity)
  end
end
