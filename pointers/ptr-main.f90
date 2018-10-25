program ptrTest
  ! Compile with: gfortran -o ptrTest ptr-sub.f90 ptr-main.f90
  implicit none

  integer, pointer :: p
  integer :: i

  ! We need an interface to the external subroutine update because a pointer
  ! is being passed.  Without the interface the program generates a segmentation
  ! fault due to invalid memory reference.  Putting the subroutine into a module
  ! and USEing it eliminates the need for this interface.
  interface 
    subroutine update(ptr, n)
      integer, pointer :: ptr
      integer, target :: n
    end subroutine update
  end interface 

  do i = 1,10
    call update(p, i)
    write(*,*) p
  end do


end program ptrTest
