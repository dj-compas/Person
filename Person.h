//
//  Person.h
//  Person
//
//  Created by Michael Compas on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
	// instance variables go here!!
		// - it seems they can be share the same names as properties
	//int age;
	
}

// ^^ - curly braces not used above; perhaps it's not necessary to pre-define variables as long as property and synthesise are used
// ^^ - maybe ANY variables used in the class need to be defined here

// define getters/setters
	// - use of strong is recommended (maybe even mandatory) with pointers
	// - use assign for non-pointer variables
	// - nonatomic is used for non-threaded applications
	// - to note: this is a way of automatically defining getters and setters
@property (nonatomic, strong) NSString *name;
@property (nonatomic, assign) int age;

// define methods
	// - placing the asterisk in the parentheses seems to be mandatory when using NSString as an argument type
	// - I'm assuming this is the case for any pre-defined class (havent used any other classes yet; this may or may not be a unique case)
- (id) initWithName: (NSString *) n age: (int) a;

- (void) setAge:(int)age;

// define a class method (not an instance method like above)
+ (NSString *) vitalOrgan: (NSString *) organ;
+ (void) sleep;

@end
