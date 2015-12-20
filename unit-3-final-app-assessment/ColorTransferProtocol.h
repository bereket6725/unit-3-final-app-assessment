//
//  ColorTransferProtocol.h
//  unit-3-final-app-assessment
//
//  Created by Bereket  on 12/20/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <Foundation/Foundation.h>


@protocol ColorTransferProtocol <NSObject>


@required

-(void)colorThatYouPicked:(UIColor *)buttonColor;


@end
