Subroutine Borkowski(x, y, z, a, f, phi, lambda, h)
!****************************************************************************
! Function  : Use the closed formula given by Borkowski (1989) to transform
!             cartesian coordinates to geodetic coordinates
! Input     :
!             x,y,z   - Cartesian coordinates, unit: meter
!             a,f     - Reference ellipsoid parameters    
! Output    :
!             phi     - Geodetic latitude, in radius
!             lambda  - Geodetic longitude, in radius
!             h       - Geodetic height, meter
! Author    : Yu Zhang, zhang.6345@osu.edu, Ohio State University
! Reference : Borkowski 1989
!****************************************************************************
    
    implicit none
    ! Variables
    real, intent(in)    :: x, y, z, a, f
    real                :: phi, lambda, h
    real                :: b, r, E, bigF, P, Q, D, v, G, t, pi
    
    pi = 4.d0*atan(1.d0)
    
    b = a*(1.d0-f)
    r = sqrt(x**2+y**2)
    if(r .eq. 0) then
        phi = sign(pi/2, z)
        lambda = 0.d0
        h = abs(z) - b
        return
    endif
    
    ! when z<0, b=-b
    b = sign(a*(1.d0-f), z)
    E = (b*z - a**2 + b**2)/(a*r)
    bigF = (b*z + a**2 - b**2)/(a*r)
    P = 4.d0/3.d0*(E*bigF + 1.d0)
    Q = 2*(E**2 - bigF**2)
    D = P**3 + Q**2
    
    if(D .lt. 0.d0) then
        v = 2*(-P)**0.5*cos(1.d0/3.d0*acos(Q/P*(-P)**(-0.5)))
    else
        v = (D**0.5-Q)**(1.d0/3.d0)-(D**0.5+Q)**(1.d0/3.d0)
        v = -(v**3+2*Q)/(3*P)
    endif
    
    G = (sqrt(E**2+v)+E)/2.d0
    t = sqrt(G**2+(bigF-v*G)/(2*G-E))-G

    ! The function ATAN will return a value in [-pi/2, pi/2]
    ! The function ATAN2(Y,X) = arctan(y,x) will return a value in (-pi, pi]. 
    ! If Y is positive the result will be positive. If Y is zero the result will be zero
    ! If X is positive, and pi if X is negative. If Y is negative the result will be negative. 
    ! If X is zero the result will be plus or minus pi/2. Both X and Y are not permitted to be zero 
    ! simultaneously. The purpose of the function is to avoid division by zero.
    phi = atan(a*(1.d0-t**2.d0)/(2.d0*b*t))
    lambda = atan2(y,x)
    h = (r-a*t)*cos(phi)+(z-b)*sin(phi)
    return
    
end subroutine