module kind_mod
    USE ISO_FORTRAN_ENV, only: real_kinds,real32,real64,real128
    integer, parameter :: sp=kind(4)
    integer, parameter :: dp=selected_real_kind(15,200)
    integer, parameter :: qp=kind(16)
end module  kind_mod

program test
    use iso_c_binding
    use kind_mod
!    use kind_mod, only : sp,dp,qp 
    implicit none
    real(kind=4) ::a4
    real(kind=8) ::a8
    real(kind=10)::a10
    real(kind=16)::a16
    real(kind=real128)::a128

    a4=123456789.123456789_4
    a8=123456789.123456789_8
    a10=123456789.123456789_10
    a16=123456789.123456789_dp
    a128=123456789.123456789_real128

    write(*,*) kind(a4),precision(a4),range(a4)
    write(*,*) kind(a8), precision(a8),range(a8)
    write(*,*) kind(a10), precision(a10),range(a10)
    write(*,*) kind(a16), precision(a16),range(a16)
    write(*,*) kind(a128), precision(a128),range(a128)
    write(*,*) a4,a8,a10,a16,a128,dp
    wr
   
ite(*,*) real_kinds
    write(*,*)huge(a4),epsilon(a4)
    write(*,*)huge(a8),epsilon(a8)
    write(*,*)huge(a10),epsilon(a10)
    write(*,*)huge(a16),epsilon(a16)
    read(*,*)
end program test
