module Crystalla
  class NdArray

    # element wise square root
    def sqrt
      result = self.values.map{|v| Math.sqrt(v)}
      NdArray.new(result, shape)
    end

    # element wise exp
    def exp
      result = self.values.map{|v| Math.exp(v)}
      NdArray.new(result, shape)
    end

    # element wise sigmoid
    def sigmoid
      return ((-self).exp + 1) ** -1
    end
  end
end