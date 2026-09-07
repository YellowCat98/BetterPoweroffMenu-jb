#import <PVOptions.h>
#import <Foundation/Foundation.h>

@class PVMenuViewController;

@interface PVMenuController : NSObject

@property (nonatomic) PVOptions selectedOption;
@property (nonatomic, weak) PVMenuViewController* viewController;

-(void) changeSelected:(PVOptions)option;

@end