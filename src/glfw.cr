require "./glfw/**"

@[Link(ldflags: "`pkg-config glfw3 --libs --static`")]
lib LibGLFW
  VERSION = "3.3.3"

  DONT_CARE = -1

  VERSION_MAJOR = 3

  VERSION_MINOR = 3

  VERSION_REVISION = 0
end
