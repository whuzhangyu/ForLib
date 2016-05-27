program xxyz2spheric
!****************************************************************************
! Function  : test the subroutine xyz2spheric
! Author    : Yu Zhang, zhang.6345@osu.edu     
!****************************************************************************
    implicit none
    ! Variables
    real        :: lon, lat, r
    
    call xyz2spheric( 5.4867727d+02,  34.519848,  1.7493714d+04, lon, lat, r)
    print *, lon, lat, r
    call xyz2spheric(-5.4867727d+02,  34.519848,  1.7493714d+04, lon, lat, r)
    print *, lon, lat, r
    call xyz2spheric( 5.4867727d+02, -34.519848,  1.7493714d+04, lon, lat, r)
    print *, lon, lat, r
    call xyz2spheric( 5.4867727d+02,  34.519848, -1.7493714d+04, lon, lat, r)
    print *, lon, lat, r
    call xyz2spheric( 0.d+02,  0.d+02, 0.d+02, lon, lat, r)
    print *, lon, lat, r
end program