lib LibGLFW
  alias GLProc = -> Void

  fun make_context_current = glfwMakeContextCurrent(window : Window) : Void

  fun get_current_context = glfwGetCurrentContext : Window

  fun swap_interval = glfwSwapInterval(interval : Int32) : Void

  fun extension_supported = glfwExtensionSupported(extension : UInt8*) : Bool

  fun get_proc_address = glfwGetProcAddress(procname : UInt8*) : GLProc
end
