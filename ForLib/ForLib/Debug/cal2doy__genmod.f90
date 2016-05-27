        !COMPILER-GENERATED INTERFACE MODULE: Fri May 27 10:53:45 2016
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE CAL2DOY__genmod
          INTERFACE 
            SUBROUTINE CAL2DOY(YEAR,MONTH,DAY,DOY)
              INTEGER(KIND=4), INTENT(IN) :: YEAR
              INTEGER(KIND=4), INTENT(IN) :: MONTH
              INTEGER(KIND=4), INTENT(IN) :: DAY
              INTEGER(KIND=4), INTENT(OUT) :: DOY
            END SUBROUTINE CAL2DOY
          END INTERFACE 
        END MODULE CAL2DOY__genmod
