subroutine xyz2spheric(x, y, z, lon, lat, r)
!****************************************************************************
! Function  : Convert Cartesian coordinates to spherical coordinates
! Input     :
!             x, y, z - Cartesian coordinates, in meters
! Output    :
!             lon     - spherical longitude , in radius
!             lat     - spherical latitude, in radius
!             r       - spherical radial distance, in meter
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
!****************************************************************************

    implicit none
    ! Variables
    real, intent(in)    :: x, y, z
    real, intent(out)   :: lon, lat, r
    
    r=sqrt(x**2 + y**2 + z**2)
    ! The four-quadrant tangent inverse, atan2(Y,X), returns values
    ! in the closed interval [-pi,pi]
    lon=atan2(y, x)
    ! asin(x) returns values in the interval [-pi/2,pi/2]
    if(r==0.d0) then
        lat = 0.d0
    else
        lat=asin(z/r)
    endif
    return
end subroutine