@[Link("glfw3")]
lib LibGLFW
  type Window = Void*

  alias WindowPosProc = Window, Int32, Int32 -> Void

  alias WindowSizeProc = Window, Int32, Int32 -> Void

  alias WindowCloseProc = Window -> Void

  alias WindowRefreshProc = Window -> Void

  alias WindowFocusProc = Window, Bool -> Void

  alias WindowIconifyProc = Window, Bool -> Void

  alias WindowMaximizeProc = Window, Bool -> Void

  alias FrameBufferSizeProc = Window, Int32, Int32 -> Void

  alias WindowContentScaleProc = Window, Float32, Float32 -> Void

  fun default_window_hints = glfwDefaultWindowHints : Void

  fun window_hint = glfwWindowHint(hint : WindowHint, value : Bool | ClientAPI | ContextCreationAPI | OpenGLProfile | ContextRobustness | ReleaseBehavior | Int32) : Void

  fun window_hint_string = glfwWindowHintString(hint : WindowHint, value : UInt8*) : Void

  fun create_window = glfwCreateWindow(width : Int32, height : Int32, title : UInt8*, monitor : Monitor, share : Window) : Window

  fun destroy_window = glfwDestroyWindow(window : Window) : Void

  fun window_should_close = glfwWindowShouldClose(window : Window) : Bool

  fun set_window_should_close = glfwSetWindowShouldClose(window : Window, value : Bool) : Void

  fun set_window_title = glfwSetWindowTitle(window : Window, title : UInt8*) : Void

  fun set_window_icon = glfwSetWindowIcon(window : Window, count : Int32, images : Image*) : Void

  fun get_window_pos = glfwGetWindowPos(window : Window, xpos : Int32*, ypos : Int32*) : Void

  fun set_window_pos = glfwSetWindowPos(window : Window, xpos : Int32, ypos : Int32) : Void

  fun get_window_size = glfwGetWindowSize(window : Window, width : Int32*, height : Int32*) : Void

  fun set_window_size_limits = glfwSetWindowSizeLimits(window : Window, min_width : Int32, min_height : Int32, max_width : Int32, max_height : Int32)

  fun set_window_aspect_ratio = glfwSetWindowAspectRation(window : Window, numer : Int32, denom : Int32) : Void

  fun set_window_size = glfwSetWindowSize(window : Window, width : Int32, height : Int32) : Void

  fun get_framebuffer_size = glfwGetFramebufferSize(window : Window, width : Int32*, height : Int32*) : Void

  fun get_window_frame_size = glfwGetWindowFrameSize(window : Window, left : Int32*, top : Int32*, right : Int32*, bottom : Int32*) : Void

  fun get_window_content_scale = glfwGetWindowContentScale(window : Window, xscale : Float32*, yscale : Float32*) : Void

  fun get_window_opacity = glfwGetWindowOpacity(window : Window) : Float32

  fun set_window_opacity = glfwSetWindowOpacity(window : Window, opacity : Float32) : Void

  fun iconify_window = glfwIconifyWindow(window : Window) : Void

  fun restore_window = glfwRestoreWindow(window : Window) : Void

  fun maximize_window = glfwMaximizeWindow(window : Window) : Void

  fun show_window = glfwShowWindow(window : Window) : Void

  fun hide_window = glfwHideWindow(window : Window) : Void

  fun focus_window = glfwFocusWindow(window : Window) : Void

  fun require_window_attention = glfwRequestWindowAttention(window : Window) : Void

  fun get_window_monitor = glfwGetWindowMonitor(window : Window) : Monitor

  fun set_window_monitor = glfwSetWindowMonitor(window : Window, monitor : Monitor, xpos : Int32, ypos : Int32, width : Int32, height : Int32, refresh_rate : Int32) : Void

  fun get_window_attrib = glfwGetWindowAttrib(window : Window, attrib : WindowAttribute) : Bool | ClientAPI | ContextCreationAPI | OpenGLProfile | ContextRobustness | Int32

  fun set_window_attrib = glfwSetWindowAttrib(window : Window, attrib : WindowAttribute, value : Bool) : Void

  fun set_window_user_pointer = glfwSetWindowUserPointer(window : Window, pointer : Void*) : Void

  fun get_window_user_pointer = glfwGetWindowUserPointer(window : Window) : Void*

  fun set_window_pos_callback = glfwSetWindowPosCallback(window : Window, callback : WindowPosProc?) : WindowPosProc?

  fun set_window_size_callback = glfwSetWindowSizeCallback(window : Window, callback : WindowSizeProc?) : WindowSizeProc?

  fun set_window_close_callback = glfwSetWindowCloseCallback(window : Window, callback : WindowCloseProc?) : WindowCloseProc?

  fun set_window_refresh_callback = glfwSetWindowRefreshCallback(window : Window, callback : WindowRefreshProc?) : WindowRefreshProc?

  fun set_window_focus_callback = glfwSetWindowFocusCallback(window : Window, callback : WindowFocusProc?) : WindowFocusProc?

  fun set_window_iconify_callback = glfwSetWindowIconifyCallback(window : Window, callback : WindowIconifyProc?) : WindowIconifyProc?

  fun set_window_maximize_callback = glfwSetWindowMaximizeCallback(window : Window, callback : WindowMaximizeProc?) : WindowMaximizeProc?

  fun set_framebuffer_size_callback = glfwSetFramebufferSizeCallback(window : Window, callback : FrameBufferSizeProc?) : FrameBufferSizeProc?

  fun set_window_content_scale_callback = glfwSetWindowContentScaleCallback(window : Window, callback : WindowContentScaleProc?) : WindowContentScaleProc?

  fun poll_events = glfwPollEvents : Void

  fun wait_events = glfwWaitEvents : Void

  fun wait_events_timeout = glfwWaitEventsTimeout(timeout : Float64) : Void

  fun post_empty_event = glfwPostEmptyEvent : Void

  fun swap_buffers = glfwSwapBuffers(window : Window) : Void
end
