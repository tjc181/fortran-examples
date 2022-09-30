program ptrTest
  ! Compile with: gfortran -o ptrTest ptr-module.f90 ptr-mod-main.f90
  use ptr_mod, only: update
  implicit none

  integer, pointer :: p
  integer :: i

  do i = 1,10
    call update(p, i)
    write(*,*) p
  end do


end program ptrTest
