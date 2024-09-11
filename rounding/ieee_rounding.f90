program ieee_rounding
use, intrinsic :: ieee_arithmetic
implicit none

! Explore IEEE rounding
!
! Tom Canich <tjc181@psu.edu>
! 2024-09-11

type (IEEE_ROUND_TYPE) :: mode
real :: x=1.0, y=2.2

call ieee_get_rounding_mode(mode)


write(*,*) "x + y = ",x+y
write(*,*) "x / y = ",x/y

call ieee_set_rounding_mode(IEEE_UP)

write(*,*) "Round up: x + y = ",x+y
write(*,*) "x / y = ",x/y

call ieee_set_rounding_mode(IEEE_DOWN)

write(*,*) "Round down: x + y = ",x+y
write(*,*) "x / y = ",x/y

call ieee_set_rounding_mode(IEEE_NEAREST)

write(*,*) "Round nearest: x + y = ",x+y
write(*,*) "x / y = ",x/y

call ieee_set_rounding_mode(mode)

end program
