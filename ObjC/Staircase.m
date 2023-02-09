//Write a program that prints a staircase of size n.
//Eg.: Staircase of size n=4
//   #
//  ##
// ###
//####

- (void) staircase:(NSNumber *)n {
    int size = [n intValue];
    for (int row=1; row<=size;row++) {
        int spaces = size-row;
        for (int j=1; j<=spaces; j++) {
            printf(" ");
        }
        for (int k=1; k<=row; k++) {
            printf("#");
        }
        printf("\n");
    }
}