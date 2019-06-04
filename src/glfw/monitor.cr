lib LibGLFW
  type Monitor = Void*

  alias MonitorProc = Monitor, DeviceEvent -> Void

  fun get_monitors = glfwGetMonitors(count : Int32*) : Monitor*

  fun get_primary_monitor = glfwGetPrimaryMonitor : Monitor

  fun get_monitor_pos = glfwGetMonitorPos(monitor : Monitor, xpos : Int32*, ypos : Int32*) : Void

  fun get_monitor_workarea = glfwGetMonitorWorkarea(monitor : Monitor, xpos : Int32*, ypos : Int32*, width : Int32*, height : Int32*) : Void

  fun get_monitor_physical_size = glfwGetMonitorPhysicalSize(monitor : Monitor, width_mm : Int32*, height_mm : Int32*) : Void

  fun get_monitor_content_scale = glfwGetMonitorContentScale(monitor : Monitor, xscale : Float32*, yscale : Float32*) : Void

  fun get_monitor_name = glfwGetMonitorName(monitor : Monitor) : UInt8*

  fun set_monitor_user_pointer = glfwSetMonitorUserPointer(monitor : Monitor, pointer : Void*) : Void

  fun get_monitor_user_pointer = glfwGetMonitorUserPointer(monitor : Monitor) : Void*

  fun set_monitor_callback = glfwSetMonitorCallback(callback : MonitorProc?) : MonitorProc?

  fun get_video_modes = glfwGetVideoModes(monitor : Monitor, count : Int32*) : VideoMode*

  fun get_video_mode = glfwGetVideoMode(monitor : Monitor) : VideoMode*

  fun set_gamma = glfwSetGamma(monitor : Monitor, gamma : Float32) : Void

  fun get_gamma_ramp = glfwGetGammaRamp(monitor : Monitor) : GammaRamp*

  fun set_gamma_ramp = glfwSetGammaRamp(monitor : Monitor, ramp : GammaRamp*) : Void
end
