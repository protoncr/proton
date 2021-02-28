struct Slice(T)
  def +(other)
    self.class.concat(self, other)
  end

  def self.concat(*slices)
    size = slices.map(&.bytesize).sum
    buffer = Bytes.new(size)
    index = 0
    slices.each do |slice|
      slice
        .to_unsafe
        .unsafe_as(Pointer(UInt8))
        .copy_to(buffer.to_unsafe + index, slice.bytesize)
      index += slice.bytesize
    end
    buffer
  end
end
