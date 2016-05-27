subroutine cal2mjd(year, month, day, hour, minute ,sec, mjd, sod)
!****************************************************************************
! Function  : Convert Gregorian calendar date to integer modified Julian day
!             and seconds of day, JD is based on Universal Time
! Input     :
!             year, month, day, hour, minute, sec - Geogorian date
! Output    :
!             mjd     - integer modified Julian day 
!             sod     - double seconds of day
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
! Reference : Richards, E.G. 2012, "Calendars," from the Explanatory 
!             Supplement to the Astronomical Almanac, 3rd edition, S.E Urban 
!             and P.K. Seidelmann eds., (Mill Valley, CA: University Science 
!             Books), Chapter 15, pp. 585-624.
!****************************************************************************

    implicit none
    ! Variables
    integer, intent(in) :: year, month, day, hour, minute
    real, intent(in)    :: sec
    integer, intent(out):: mjd
    real, intent(out)   :: sod
    integer             :: yr, mon
    
    
    yr = year
    mon= month
    if(month .le. 2) then
        yr = year - 1
        mon = month + 12
    endif
    mjd = floor(365.25d0 * yr)
    mjd = mjd + floor(30.6001d0 * (mon + 1))
    mjd = mjd + day
    mjd = mjd - 679019.d0
    sod = hour*3600.d0 + minute*60.d0 + sec
    
    return
end subroutine