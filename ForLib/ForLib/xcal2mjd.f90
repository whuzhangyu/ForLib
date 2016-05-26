program xcal2mjd
!****************************************************************************
! Function  : test the subroutine cal2mjd and cal2jd
! Author    : Yu Zhang, zhang.6345@osu.edu     
!****************************************************************************
    implicit none
    ! Variables
    integer :: year, month, calday, hour, minute, mjd
    real    :: sec, sod
    
    call cal2mjd(2016,1,25,21,16,21.1,mjd,sod)
    print *, mjd, sod
    
    call cal2jd(2016,1,25,21,16,21.1,mjd,sod)
    print *, mjd, sod
    
end program