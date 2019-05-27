@[Link("glfw3")]
lib LibGLFW
  JOYSTICK_HAT_BUTTONS = 0x00050001

  COCOA_CHDIR_RESOURCES = 0x00051001

  COCOA_MENUBAR = 0x00051002

  alias ErrorProc = ErrorCode, UInt8* -> Void

  fun init = glfwInit : Int32

  fun terminate = glfwTerminate : Void

  fun init_hint = glfwInitHint(hint : Int32, value : Int32) : Void

  fun get_version = glfwGetVersion(major : Int32*, minor : Int32*, rev : Int32*) : Void

  fun get_version_string = glfwGetVersionString : UInt8*

  fun get_error = glfwGetError(description : UInt8**) : ErrorCode

  fun set_error_callback = glfwSetErrorCallback(cbproc : ErrorProc?) : ErrorProc?
end
