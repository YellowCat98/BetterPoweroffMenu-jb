#import <UIKit/UIKit.h>

@class PVMenuController;

@interface PVMenuViewController : UIViewController

@property (nonatomic, strong) PVMenuController* controller;
@property (nonatomic, strong) UILabel* selected;

@end