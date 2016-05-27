subroutine cal2doy(year, month, day, doy)
!****************************************************************************
! Function  : Convert Gregorian calendar date to integer day of year
! Input     :
!             year, month, day - Geogorian date
! Output    :
!             doy     - integer day of year
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
!****************************************************************************

    implicit none
    ! Variables
    integer, intent(in) :: year, month, day
    integer, intent(out):: doy
    integer             :: mjdday, mjd1st
    real                :: sod
    
    call cal2mjd(year, month, day, 0, 0, 0.0, mjdday, sod)
    call cal2mjd(year, 1, 1, 0, 0, 0.0, mjd1st, sod)
    doy = mjdday - mjd1st + 1;
    
    return
end subroutine