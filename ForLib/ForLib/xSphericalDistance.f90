program xSphericalDistance
!****************************************************************************
! Function  : test the subroutine SphericalDistance 
! Author    : Yu Zhang, zhang.6345@osu.edu    
!****************************************************************************
    implicit none
    ! Variables
    
    real    :: SphericalDistance
    
    
    print *, SphericalDistance(1.5, 0.5, -1.5, 1.0)
    print *, SphericalDistance(0.0, 0.0, -1.5, 0.0)
    print *, SphericalDistance(1.5, 0.5,  1.5, 0.5)
    print *, SphericalDistance(0.0, 0.0,  0.0, 0.0)
    
end program