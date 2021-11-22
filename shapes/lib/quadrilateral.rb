# frozen_string_literal: true

def quadrilateral(a, b, c, d)

  if (a == b) && (b == c) && (c == d)
    [:square, :rectangle]
  elsif ((a == b) && (c == d)) || ((a == c) && (b == d)) || ((a == d) && (b == c))
    [:parallelogram, :rhombus]
  else
    [:quadrilateral]
  end


  
end
  

# Error class used in invalid_quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
