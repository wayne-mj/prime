program check
    use iso_fortran_env
    use VerySimpleTestFramework
    implicit none

    ! print *, "Put some tests in here!"
    call suite("Begin Test")
    
    call test("Must pass")
    
    call assert_pass()

    call results()
end program check
