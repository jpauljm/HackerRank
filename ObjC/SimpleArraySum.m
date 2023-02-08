//Given an array of integers, find the sum of its elements.

- (NSNumber *) simpleArraySum:(NSArray *)ar {
    int intResult = 0;
    for (NSNumber *n in ar) {
        intResult += [n intValue];
    }
    return [NSNumber numberWithInt:intResult];
}