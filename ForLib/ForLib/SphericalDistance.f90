real function SphericalDistance(lat1, lon1, lat2, lon2)
!****************************************************************************
! Function  : compute the spherical distance (geocentric angle) of two points
! Input     :
!             lat1, lon1  - latitude and longitude of first point, in radius
!             lat2, lon2  - latitude and longitude of second point, in radius
! Output    :
!             psi         - spherical distance (geocentric angle), in radius
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
! Reference : H&M P353, 9-29 
!****************************************************************************

    implicit none
    ! Variables
    real, intent(in)    :: lat1, lon1, lat2, lon2
    real                :: psi
    
    psi=sin(lat1)*sin(lat2)+cos(lat1)*cos(lat2)*cos(lon1-lon2)
    psi=acos(psi)
    SphericalDistance = psi
    return
end function