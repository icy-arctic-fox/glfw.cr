lib LibGLFW
  enum Bool : Int32
    False = 0
    True  = 1

    # Converts a value to a GLFW boolean.
    # Returns `True` if value is truthy, `False` otherwise.
    def self.new(value)
      value ? True : False
    end

    # Converts to a native Crystal `Bool`.
    def to_bool
      !false?
    end
  end
end
