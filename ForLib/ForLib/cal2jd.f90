subroutine cal2jd(year, month, day, hour, minute ,sec, jd, sod)
!****************************************************************************
! Function  : Convert Gregorian calendar date to integer Julian day and 
!             seconds of day, JD is based on Universal Time, also works for BC
! Input     :
!           year, month, day, hour, minute, sec - Geogorian date
! Output    :
!           jd      - integer Julian day 
!           sod     - double seconds of day
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
! Reference : wikipedia https://en.wikipedia.org/wiki/Julian_day
!****************************************************************************

    implicit none
    ! Variables
    integer, intent(in) :: year, month, day, hour, minute
    real, intent(in)    :: sec
    integer             :: jd, a, y, m
    real                :: sod
    
    ! compute first the number of years (y) and months (m) since 
    ! March 1 -4800 (March 1, 4801 BC)
    a = int((14-month)/12)
    y = year + 4800 - a
    m = month + 12*a - 3
    
    ! The value 'a' will be 1 for January and February, and 0 for other months. 
    ! And 'm' will be 0 for March and 11 for February.
    ! All years in the BC era must be converted to astronomical years, 
    ! so that 1 BC is year 0, 2 BC is year -1, etc. Convert to a negative 
    ! number, then increment toward zero.
    ! Then, if starting from a Gregorian calendar date compute
    jd = day+int((153*m+2)/5)+365*y+int(y/4)-int(y/100) &
        & + int(y/400)-32045
    ! Otherwise, if starting from a Julian calendar date compute
    sod = (hour-12)*3600.d0 + minute*60.d0 + sec
    
    return
end subroutine