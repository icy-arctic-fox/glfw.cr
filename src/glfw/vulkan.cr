lib LibGLFW
  alias VKProc = -> Void

  alias VKInstance = Void**

  alias VKPhysicalDevice = Void**

  alias VKSurfaceKHR = Void**

  alias VKResult = Int32

  struct VKAllocationCallbacks
    user_data : Void*
    allocation, reallocation, free, internal_allocation, internal_free : Void*
  end

  fun vulkan_supported = glfwVulkanSupported : Bool

  fun get_required_instance_extensions = glfwGetRequiredInstanceExtensions(count : UInt32*) : UInt8**

  fun get_instance_proc_address = glfwGetInstanceProcAddress(instance : VKInstance, procname : UInt8*) : VKProc?

  fun get_physical_device_presentation_support = glfwGetPhysicalDevicePresentationSupport(instance : VKInstance, device : VKPhysicalDevice, queue_family : UInt32) : Bool

  fun create_window_surface = glfwCreateWindowSurface(instance : VKInstance, window : Window, allocator : VKAllocationCallbacks*, surface : VKSurfaceKHR*) : VKResult
end
