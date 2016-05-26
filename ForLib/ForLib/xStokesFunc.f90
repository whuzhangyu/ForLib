program xStokesFunc
!****************************************************************************
! Function  : Test the subroutine StokesFunc 
! Author    : Yu Zhang, zhang.6345@osu.edu    
!****************************************************************************
    
    implicit none
    ! Variables
    real        :: psi, StokesFunc
    
    psi = 0.1
    print *, StokesFunc(psi)
end program