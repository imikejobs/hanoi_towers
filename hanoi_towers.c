#include <stdio.h>
#include <stdlib.h>

static void stack(int source, int target, int interm, int n) {
    if (n == 0)
        return;
    stack(source, interm, target, n-1);
    printf("%d: %d ->%d\n", n, source, target);
    stack(interm, target, source, n-1);
}

int main(int argc, char **argv) {
    int n;
    if (argc < 2) {
        fprintf(stderr, "Enter a parameter\n");
        return 1;
    }
    n = atoi(argv[1]);
    if (n < 1) {
        fprintf(stderr, "Wrong parameter\n");
        return 2;
    }
    stack(1, 3, 2, n);
    return 0;
}
