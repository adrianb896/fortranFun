PROGRAM MAIN
    IMPLICIT NONE
    INTEGER :: a, output
    REAL :: b
    CHARACTER(LEN=100) :: c, string
    a = 8
    b = 3.0
    c = 'I learned Fortran for my CS 351 class'
    CALL output_func(a, b, output)

    string = c // ', output: ' 

    WRITE(*, '(A, I0)') string
    WRITE(*,'(A, I0, A, F5.1)') 'int value: ', a, &
        ', real value: ', b, ', int + real (output): ', output

CONTAINS
    SUBROUTINE output_func(a, b, c)
        IMPLICIT NONE
        INTEGER, intent(in) :: a
        REAL, intent(in) :: b
        INTEGER, intent(out) :: c

        c = a + INT(b)
    END SUBROUTINE output_func
END PROGRAM MAIN
