program xBorkowski
!****************************************************************************
! Function  : test the subroutine Borkowski 
! Author    : Yu Zhang, zhang.6345@osu.edu    
!****************************************************************************
    implicit none
    real            :: x, y, z, a, f
    real            :: phi, lambda, h
    
    ! GRS80 ellipsoid
    a = 6378137.d0;
    f = 1.d0 / 298.257222101d0;
    
    x = 5.967013491323817d+05
    y = -4.859087366330612d+06
    z = 4.074795194789081d+06    
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h
    
    x = -5.967013491323817d+05
    y = -4.859087366330612d+06
    z = 4.074795194789081d+06    
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h

    x = 5.967013491323817d+05
    y = 4.859087366330612d+06
    z = 4.074795194789081d+06    
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h
 
    x = 5.967013491323817d+05
    y = -4.859087366330612d+06
    z = -4.074795194789081d+06    
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h

    x = 0d+06
    y = 0d+06
    z = 6.967013491323817d+06
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h

    x = 0d+06
    y = 0d+06
    z = -6.967013491323817d+06
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h

    x = 0d+06
    y = 0d+06
    z = 6.d+06
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h

    x = 0d+06
    y = 0d+06
    z = -6.d+06
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h

    x = 0d+06
    y = 0d+06
    z = 0d+06
    call Borkowski(x, y, z, a, f, phi, lambda, h)
    print *, phi, lambda, h

    end program
    