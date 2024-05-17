program prime
    ! Find x prime numbers
    use prime_module
    implicit none

    integer :: primes, number, limit
    logical :: is_prime

    ! Define the number of prime numbers to find
    limit = 10**2
    primes = 0
    number = 0

    ! Find the prime numbers
    do while (primes < limit)
        is_prime = prime_number(number)

        if (is_prime .eqv. .true.) then
            primes = primes + 1
            print *, primes, number
        end if
        number = number + 1
    end do
end program prime

