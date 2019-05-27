@[Link("glfw3")]
lib LibGLFW
  # typedef struct GLFWcursor GLFWcursor

  # typedef struct GLFWgamepadstate

  alias MouseButtonProc = Window, Int32, Action, Int32 -> Void

  alias CursorPosProc = Window, Float64, Float64 -> Void

  alias CursorEnterProc = Window, Bool -> Void

  alias ScrollProc = Window, Float64, Float64 -> Void

  alias KeyProc = Window, Int32, Int32, Action, Int32 -> Void

  alias CharProc = Window, UInt32 -> Void

  alias CharModsProc = Window, UInt32, Int32 -> Void

  alias DropProc = Window, Int32, UInt8** -> Void

  alias JoystickProc = Int32, Int32 -> Void

  fun get_input_mode = glfwGetInputMode(window : Window, mode : InputMode) : Int32

  fun set_input_mode = glfwSetInputMode(window : Window, mode : InputMode, value : Int32) : Void

  fun raw_mouse_motion_supported = glfwRawMouseMotionSupported : Bool

  fun get_key_name = glfwGetKeyName(key : Int32, scancode : Int32) : UInt8*

  fun get_key_scancode = glfwGetKeyScancode(key : Int32) : Int32

  fun get_key = glfwGetKey(window : Window, key : Int32) : Int32

  fun get_mouse_button = glfwGetMouseButton(window : Window, button : Int32) : Int32

  fun get_cursor_pos = glfwGetCursorPos(window : Window, xpos : Float64*, ypos : Float64*) : Void

  fun set_cursor_pos = glfwSetCursorPos(window : Window, xpos : Float64, ypos : Float64) : Void

  fun create_cursor = glfwCreateCursor(image : Image, xhot : Int32, yhot : Int32) : Cursor

  fun create_standard_cursor = glfwCreateStandardCursor(share : Int32) : Cursor

  fun destroy_cursor = glfwDestroyCursor(cursor : Cursor) : Void

  fun set_cursor = glfwSetCursor(window : Window, cursor : Cursor) : Void

  fun set_key_callback = glfwSetKeyCallback(window : Window, callback : KeyProc?) : KeyProc?

  fun set_char_callback = glfwSetCharCallback(window : Window, callback : CharProc?) : CharProc?

  fun set_char_mods_callback = glfwSetCharModsCallback(window : Window, callback : CharModsProc?) : CharModsProc?

  fun set_mouse_button_callback = glfwSetMouseButtonCallback(window : Window, callback : MouseButtonProc?) : MouseButtonProc?

  fun set_cursor_pos_callback = glfwSetCursorPosCallback(window : Window, callback : CursorPosProc?) : CursorPosProc?

  fun set_cursor_enter_callback = glfwSetCursorEnterCallback(window : Window, callback : CursorEnterProc?) : CursorEnterProc?

  fun set_scroll_callback = glfwSetScrollCallback(window : Window, callback : ScrollProc?) : ScrollProc?

  fun set_drop_callback = glfwSetDropCallback(window : Window, callback : DropProc?) : DropProc?

  fun joystick_present = glfwJoystickPresent(jid : Int32) : Int32

  fun get_joystick_axes = glfwGetJoystickAxes(jid : Int32, count : Int32*) : Float32*

  fun get_joystick_buttons = glfwGetJoystickButtons(jid : Int32, count : Int32*) : UInt8*

  fun get_joystick_hats = glfwGetJoystickHats(jid : Int32, count : Int32*) : UInt8*

  fun get_joystick_name = glfwGetJoystickName(jid : Int32) : UInt8*

  fun get_joystick_guid = glfwGetJoystickGUID(jid : Int32) : UInt8*

  fun set_joystick_user_pointer = glfwSetJoystickUserPointer(jid : Int32, pointer : Void*) : Void

  fun get_joystick_user_pointer = glfwGetJoystickUserPointer(jid : Int32) : Void*

  fun joystick_is_gamepad = glfwJoystickIsGamepad(jid : Int32) : Int32

  fun set_joystick_callback = glfwSetJoystickCallback(callback : JoystickProc?) : JoystickProc?

  fun update_gamepad_mappings = glfwUpdateGamepadMappings(string : UInt8*) : Int32

  fun get_gamepad_name = glfwGetGamepadName(jid : Int32) : UInt8*

  fun get_gamepad_state = glfwGetGamepadState(jid : Int32, state : GamepadState*) : Int32

  fun set_clipboard_string = glfwSetClipboardString(window : Window, string : UInt8*) : Void

  fun get_clipboard_string = glfwGetClipboardString(window : Window) : UInt8*

  fun get_time = glfwGetTime : Float64

  fun set_time = glfwSetTime(time : Float64) : Void

  fun get_timer_value = glfwGetTimerValue : UInt64

  fun get_timer_frequency = glfwGetTimerFrequency : UInt64
end
