/* https://github.com/cirosantilli/linux-kernel-module-cheat#armv8-aarch64-movn-instruction */

#include "common.h"

ENTRY
    ldr x0, =0x123456789ABCDEF0
    movn x0, 0x8888, lsl 16
    ASSERT_EQ(x0, 0xFFFFFFFF7777FFFF)
EXIT
