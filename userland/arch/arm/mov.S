/* https://github.com/cirosantilli/linux-kernel-module-cheat#arm-mov-instruction */

#include "common.h"

ENTRY

    /* Immediate. */
    mov r0, 0
    ASSERT_EQ(r0, 0)
    mov r0, 1
    ASSERT_EQ(r0, 1)

    /* Register. */
    mov r0, 0
    mov r1, 1
    mov r1, r0
    ASSERT_EQ(r1, 0)

EXIT
