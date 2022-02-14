//
//  main.m
//  BasicSyntax
//
//  Created by Pedro Rojas on 02/02/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        NSNumber *number = [[NSNumber alloc] initWithInt:1];
//        NSArray *array = @[number, @2, @3];
//
//        NSLog(@"%@", array);
        
//        NSDictionary *dictionary = @{
//            @1: @"Hello",
//            @2: @"World",
//            @3: @"My friends"
//        };
        
//        NSDictionary *dictionary = [NSDictionary
//        dictionaryWithObjectsAndKeys:
//                @"Hello", @1,
//                @"World", @2,
//                @"My friends",@3,
//                nil
//        ];
        
//        NSMutableDictionary *dictionary = [
//            @{
//                @1: @"Hello",
//                @2: @"World",
//                @3: @"My friends"
//            }
//
//            mutableCopy
//        ];
        
//        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithDictionary:@{
//                @1: @"Hello",
//                @2: @"World",
//                @3: @"My friends"
//            }
//        ];
//
//        dictionary[@1] = @"1";
//
//        for (NSNumber *key in dictionary) {
//            NSLog(@"%@", [dictionary objectForKey:key]);
//        }
//
//        [dictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
//            NSLog(@"%@", dictionary[key]);
//        }];
        
        NSSet *odd = [NSSet setWithObjects:@1, @3, @5, nil];
        NSSet *even = [NSSet setWithObjects:@2, @4, @6, nil];
        NSSet *combined = [odd setByAddingObjectsFromSet:even];
        
        for (NSNumber *number in [combined allObjects]) {
            NSLog(@"%@", number);
        }
        
        NSMutableSet *mutable = [combined mutableCopy];
        [mutable addObject:@10];
        [mutable removeAllObjects];
        
        NSLog(@"Elements in odd: %lu",[odd count]);
        
        
        if ([odd containsObject:@3]) {
            NSLog(@"An odd number found");
        }
        
        if ([odd intersectsSet:even]) {
            NSLog(@"Set interects!");
        } else {
            NSLog(@"No values intersected");
        }
        
        // NSCountedSet
        NSCountedSet *countedSet = [
            NSCountedSet
            setWithObjects:@1, @3, @2, @8, @3, @6, @8, @8, @5, @1, @6, @3, nil
        ];
        
        for (NSString *value in [countedSet allObjects]) {
            NSLog(@"%@ appears %ld times", value, [countedSet countForObject:value]);
        }
        
        
    }
    return 0;
}
