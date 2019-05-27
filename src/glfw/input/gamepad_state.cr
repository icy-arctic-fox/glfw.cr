@[Link("glfw3")]
lib LibGLFW
  struct GamepadState
    buttons : StaticArray(UInt8, 15)
    axes : StaticArray(Float32, 6)
  end
end
