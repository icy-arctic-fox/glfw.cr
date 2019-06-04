lib LibGLFW
  enum WindowAttribute : Int32
    Focused                = 0x00020001
    Iconified              = 0x00020002
    Resizable              = 0x00020003
    Visible                = 0x00020004
    Decorated              = 0x00020005
    AutoIconify            = 0x00020006
    Floating               = 0x00020007
    Maximized              = 0x00020008
    TransparentFramebuffer = 0x0002000A
    Hovered                = 0x0002000B
    FocusOnShow            = 0x0002000C
    ClientAPI              = 0x00022001
    ContextVersionMajor    = 0x00022002
    ContextVersionMinor    = 0x00022003
    ContextRevision        = 0x00022004
    ContextRobustness      = 0x00022005
    OpenGLForwardCompat    = 0x00022006
    OpenGLDebugContext     = 0x00022007
    OpenGLProfile          = 0x00022008
    ContextReleaseBehavior = 0x00022009
    ContextNoError         = 0x0002200A
    ContextCreationAPI     = 0x0002200B
  end
end
