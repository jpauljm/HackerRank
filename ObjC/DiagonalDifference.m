//Given a square matrix, calculate the absolute difference between the sums of its diagonals.

- (NSNumber *) diagonalDifference:(NSArray *)arr {
    int size = (int)arr.count;
    int leftDiagonal = 0;
    int rightDiagonal = 0;
    for (int index = 0; index < size; index++) {
        leftDiagonal += [[[arr objectAtIndex:index] objectAtIndex:index] intValue];
        int rightIndex = size - 1 - index;
        rightDiagonal += [[[arr objectAtIndex:index] objectAtIndex:rightIndex] intValue];
    }
    return [NSNumber numberWithInt:abs(rightDiagonal-leftDiagonal)];
}