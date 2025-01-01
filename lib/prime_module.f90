!
! Prime number module
!
module prime_module
    implicit none

    contains

    !
    !   Port of a Python function to check if a number is prime
    !
    logical function prime_number (num)
        integer, intent(in) :: num
        integer :: div

        if (num <=1 ) then
            prime_number = .false.
            return
        end if

        do div = 2, int(real(num**0.5))
            if (mod(num,div) == 0) then
                prime_number = .false.
                return
            end if
        end do

        prime_number = .true.
    end function prime_number 

end module prime_module