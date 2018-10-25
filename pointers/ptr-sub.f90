subroutine update (ptr, n)
  ! An external subroutine taking a pointer argument to demonstrate the need
  ! for an interface to an external program unit.  USEing the subroutine via
  ! a module eliminates the need for the interface block in ptr-main.f90.
  implicit none

  integer, pointer :: ptr
  integer, target :: n

  ptr => n

  return
end subroutine update
