real function StokesFunc(psi)
!****************************************************************************
! Function  : Compute the Stokes's function
! Input     :
!           psi     - geocentric angle, in radius
! Output    :
!           s       - Stokes's function value
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
! Reference : H&M, Physical Geodesy (2nd Edition) P104, 2-305 
!****************************************************************************
    
    implicit none
    ! Variables
    real, intent(in)    :: psi
    real                :: s
    
    ! if the geocentric angle is too small, Stokes's function value will be
    ! extremly large, to eliminate this singularity we have this
    if (psi .lt. 1.d-7) then
        s = 0.d0
    else
        s = 1.d0/sin(psi/2.d0) - 6*sin(psi/2.d0) + 1 - 5*cos(psi)   &
            & - 3*cos(psi)*log(sin(psi/2.d0)+sin(psi/2.d0)**2)
    endif
    
    StokesFunc = s
    return
    
end function