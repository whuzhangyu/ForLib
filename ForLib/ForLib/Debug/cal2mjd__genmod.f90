        !COMPILER-GENERATED INTERFACE MODULE: Fri May 27 10:55:49 2016
        ! This source file is for reference only and may not completely
        ! represent the generated interface used by the compiler.
        MODULE CAL2MJD__genmod
          INTERFACE 
            SUBROUTINE CAL2MJD(YEAR,MONTH,DAY,HOUR,MINUTE,SEC,MJD,SOD)
              INTEGER(KIND=4), INTENT(IN) :: YEAR
              INTEGER(KIND=4), INTENT(IN) :: MONTH
              INTEGER(KIND=4), INTENT(IN) :: DAY
              INTEGER(KIND=4), INTENT(IN) :: HOUR
              INTEGER(KIND=4), INTENT(IN) :: MINUTE
              REAL(KIND=8), INTENT(IN) :: SEC
              INTEGER(KIND=4), INTENT(OUT) :: MJD
              REAL(KIND=8), INTENT(OUT) :: SOD
            END SUBROUTINE CAL2MJD
          END INTERFACE 
        END MODULE CAL2MJD__genmod
