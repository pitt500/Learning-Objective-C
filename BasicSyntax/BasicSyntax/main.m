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
        
        NSMutableDictionary *dictionary = [[NSMutableDictionary alloc] initWithDictionary:@{
                @1: @"Hello",
                @2: @"World",
                @3: @"My friends"
            }
        ];
        
        dictionary[@1] = @"1";
        
        for (NSNumber *key in dictionary) {
            NSLog(@"%@", [dictionary objectForKey:key]);
        }
        
        [dictionary enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
            NSLog(@"%@", dictionary[key]);
        }];
        
    }
    return 0;
}
