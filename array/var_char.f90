program varchar
  implicit none

! Experiment with variable component length character arrays

  character(len=12), dimension(:), allocatable :: a

  a(1) = 'air'
  a(2) = 'water'
  a(3) = 'time'
  a(4) = 'pressure'

  write(*,*) a(1)

  


end program varchar
