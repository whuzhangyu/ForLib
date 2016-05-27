program xNormalizedLegendre
!****************************************************************************
! Function  : test the subroutine NormalizedLegendre1
! Author    : Yu Zhang, zhang.6345@osu.edu     
!****************************************************************************
    use Legendre
    implicit none
    ! Variables
    integer, parameter :: n=5
    real    :: pi, t, p(n,n)
    integer :: i
    
    pi = 4.d0 * atan(1.d0)
    t = cos(39.d0/180.d0*pi)
    call NormalizedLegendre1(n-1,t,p)
    
    do i=1, n
        print *, p(i,:)
    enddo
end program