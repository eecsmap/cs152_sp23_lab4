// See LICENSE for license details.

//**************************************************************************
// Vectorized complex multiply
//--------------------------------------------------------------------------

    .text
    .align 2

    .global cmplxmult
    .type cmplxmult,@function
/*
 * void cmplxmult(size_t n, const struct Complex a[], const struct Complex b[], struct Complex c[]);
 *
 * Calling convention:
 *     a0: size_t n
 *     a1: struct Complex *a
 *     a2: struct Complex *b
 *     a3: struct Complex *c
 */
cmplxmult:
    vsetvli t0, a0, e32, m4     # configure SEW=32 LMUL=4
    li t1, 0 
    # TODO: load a[i].real and a[i].imag
    # TODO: load b[i].real and b[i].imag
loop:
    bgeu t1, a0, end_loop       # if i >= n, exit loop
    add t2, a1, t1              # compute &a[i]
    add t3, a2, t1              # compute &b[i]
    add t4, a3, t1              # compute &c[i]
    
    vle32.v v0, (t2)            # load a[i].real
    addi t2, t2, 4
    vle32.v v1, (t2)           # load a[i].imag

    vle32.v v2, (t3)            # load b[i].real
    addi t3, t3, 4
    vle32.v v3, (t3)           # load b[i].imag
    # TODO: compute c[i].real = (a[i].real * b[i].real) - (a[i].imag * b[i].imag)
    # HINT: 2 instructions needed
    #vfmacc.vv v4, v0, v2, v0
    #vfmsac.vf v4, v1, v3, v4.t
    # TODO: compute c[i].imag = (a[i].real * b[i].imag) + (a[i].imag * b[i].real)
    # HINT: 2 instructions needed

    # TODO: store c[i].real and c[i].real

    # TODO: decrement n (a0)
    # TODO: bump pointers
    # TODO: loop
end_loop:
    ret
