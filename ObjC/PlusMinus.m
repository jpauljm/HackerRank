//Given an array of integers, calculate the ratios of its elements that are positive, negative, and zero.

- (void) plusMinus:(NSArray *)arr {
    NSMutableArray *positiveArr = [[NSMutableArray alloc] init];
    NSMutableArray *negativeArr = [[NSMutableArray alloc] init];
    for (NSNumber *n in arr) {
        if ([n intValue] > 0) {
            [positiveArr addObject:n];
        }
        else if ([n intValue] < 0) {
            [negativeArr addObject:n];
        }
    }
    float arrCount = arr.count;
    float positiveRatio = positiveArr.count/arrCount;
    float negativeRatio = negativeArr.count/arrCount;
    float zeroRatio = (arrCount - positiveArr.count - negativeArr.count)/arrCount;
    printf("%.6f\n", positiveRatio);
    printf("%.6f\n", negativeRatio);
    printf("%.6f", zeroRatio);
}