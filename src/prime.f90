program prime
    use iso_fortran_env
    ! Find x prime numbers
    use prime_module
    implicit none

    integer(int32) :: primes,  number, limit
    integer :: ierr
    logical :: is_prime
    character(len=100) :: arg

    ! Define the number of prime numbers to find
    limit = 100**2
    primes = 0
    number = 0

    print *, "Prime number finder."

    call get_command_argument(1, arg, STATUS=ierr)

    if (ierr .ne. 0) then
        print *, "Usage: prime <number>"
        stop
    else
        read(arg, '(I10)', iostat=ierr) limit
        if (ierr .ne. 0) then
            print *, "Invalid integer"
            stop
        end if
    end if

    if (limit .le. 0) then
        print *, "Must not be negative"
        stop
    end if

    ! Find the prime numbers
    do while (primes .lt. limit)
        is_prime = prime_number(number)

        if (is_prime .eqv. .true.) then
            primes = primes + 1
            print *, primes, number
        end if
        number = number + 1
    end do
end program prime

