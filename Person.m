//
//  Person.m
//  Person
//
//  Created by Michael Compas on 6/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Person.h"

@implementation Person

// for use with '@property'
//	- @synthesize is mandatory for use with property; part of the whole getter/setter thing
@synthesize name;
@synthesize age;

// custom init function
	// self = [super init]
	//		- MANDATORY: initializes this class as a subclass of it's parent (in this case, NSObject)
	//
	// if (self != nil)
	//		- MANDATORY: error checking to see if this class was properly initialized
- (id) initWithName:(NSString *)n age:(int)a
{
	self = [super init];
	if(self != nil)
	{
		self.name = n;
		
		self.age = a;
	}
	
	return self;
}

- (void) setAge:(int)a
{
	if (a < 30)
	{
		NSLog(@"You're not 30 yet, %@!", name);
		
	}
	
	age = a;
	
	return;
}

@end
