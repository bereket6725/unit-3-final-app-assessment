//
//  C4QColorPickerViewController.h
//  unit-3-final-assessment
//
//  Created by Michael Kavouras on 12/17/15.
//  Copyright © 2015 Michael Kavouras. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ColorTransferProtocol.h"

@interface C4QColorPickerViewController : UIViewController

@property (nonatomic, weak) id <ColorTransferProtocol> delegate;

@end
