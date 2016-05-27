module Legendre
    contains
    
subroutine NormalizedLegendre1(n, t, p)
!****************************************************************************
! Function  : compute the fully nromalized associated legendre function of 
!             the 1st kind Pnm(t), up to degree n and order n
! Input     :
!             n, n      - degree and order, start from 0
!             t         - parameter of Legendre function
! Output    : 
!             p         - Legendre polynomials, (n+1)*(n+1)
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
!****************************************************************************

    implicit none
    ! Variables
    integer, intent(in) :: n
    real, intent(in)    :: t
    real                :: p(:,:)
    integer             :: pr, pc   ! index of array p
    integer             :: i, j
    real                :: a, b, s
    
    
    do i = 0, n
        s = 0.d0
        do j = 0, i
            pr = i + 1
            pc = j + 1
            ! row major
            if (i==0 .and. j==0) then
                p(pr,pc)=1.d0
            elseif (i==1 .and. j==1) then
                p(pr,pc)=sqrt(3.d0*(1.d0-t**2.d0))
            elseif (i>=1 .and. j==i-1) then
                p(pr,pc)=sqrt(2.d0*i+1.d0)*t*p(pr-1,pr-1)
            elseif (i>=2 .and. i==j) then
                p(pr,pc)=sqrt((2.d0*i+1)/(2.d0*i)*(1.d0-t**2))*p(pr-1,pr-1)
            elseif (i>=2 .and. j>=0 .and. j<=(i-2)) then
                a=sqrt((2.d0*i-1.d0)*(2.d0*i+1.d0)/(i-j)/(i+j))
                b=sqrt((2.d0*i+1.d0)*(i+j-1.d0)*(i-j-1.d0)/(2.d0*i-3.d0)/(i+j)/(i-j))
                p(pr,pc)=a*t*p(pr-1,pc) - b*p(pr-2,pc)
            endif
            ! compute the error
            !s=s+p(pr,pc)**2
        enddo
        !print *, i, s-2.d0*i-1.d0
    enddo
    
    return
end subroutine

end module