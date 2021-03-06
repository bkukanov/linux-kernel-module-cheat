/* Test that input request through serial also works. */

#include <stdio.h>
#include <stdlib.h>

int main(void) {
    char c;
    char *ptr = NULL;
    size_t alloc_size = 1;
    while (1) {
        printf("enter a character\n");
        c = getchar();
        printf("got: %c\n", c);
        ptr = realloc(ptr, alloc_size);
        if (ptr == NULL) {
            puts("out of memory");
            break;
        } else {
            printf("new alloc of %zu bytes at address 0x%p\n", alloc_size, ptr);
            alloc_size <<= 1;
        }
    }
}
