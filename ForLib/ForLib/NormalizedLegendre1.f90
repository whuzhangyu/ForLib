subroutine NormalizedLegendre1(n, m, t, p)
!****************************************************************************
! Function  : compute the fully nromalized associated legendre function of 
!             the 1st kind
! Input     :
!             n, m      - are degree and order, start from 0
!             t         - parameter of Legendre function
! Output    : 
!             p         - Legendre polynomials, (n+1)*(m+1)
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
!****************************************************************************

    implicit none
    ! Variables
    integer, intent(in) :: n, m
    real, intent(in)    :: t
    real                :: p(:,:)
    integer             :: pr, pc   ! size of array p
    real                :: a, b
    
    pr = n + 1
    pc = m + 1
    ! stored by column
    if (n==0 .and. m==0) then
        p(pc, pr)=1.d0
    elseif (n==1 .and. m==1) then
        p(pc, pr)=sqrt(3.d0*(1.d0-t**2.d0))
    elseif (n>=1 .and. m==n-1) then
        p(pc, pr)=sqrt(2.d0*n+1.d0)*t*p(pr-1,pr-1)
    elseif (n>=2 .and. n==m) then
        p(pc, pr)=sqrt((2.d0*n+1)/(2.d0*n)*(1.d0-t**2))*p(pr-1,pr-1)
    elseif (n>=2 .and. m>=0 .and. m<=(n-2)) then
        a=sqrt((2.d0*n-1.d0)*(2.d0*n+1.d0)/(n-m)/(n+m))
        b=sqrt((2.d0*n+1.d0)*(n+m-1.d0)*(n-m-1.d0)/(2.d0*n-3.d0)/(n+m)/(n-m))
        p(pc, pr)=a*t*p(pc,pr-1) - b*p(pc,pr-2)
    endif
    
    return
end subroutine