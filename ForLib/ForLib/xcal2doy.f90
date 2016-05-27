program xcal2doy
!****************************************************************************
! Function  : test the subroutine cal2doy
! Author    : Yu Zhang, zhang.6345@osu.edu     
!****************************************************************************
    implicit none
    ! Variables
    integer :: doy
    
    call cal2doy(2016, 5, 27, doy)
    print *, doy
    call cal2doy(2016, 1, 1, doy)
    print *, doy
    
end program