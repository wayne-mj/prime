module prime
    use iso_fortran_env
    implicit none
    private

    public :: prime_number
    contains
    ! subroutine say_hello
    !     print *, "Hello, prime!"
    ! end subroutine say_hello

    logical function prime_number (num)
        integer(int64), intent(in) :: num
        integer(int64) :: div

        if (num .le. 1_int64 ) then
            prime_number = .false.
            return
        end if

        do div = 2, int(real(num**0.5))
            if (mod(num,div) .eq. 0) then
                prime_number = .false.
                return
            end if
        end do

        prime_number = .true.
    end function prime_number 
end module prime
