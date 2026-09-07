#import <PVMenuController.h>
#import <PVMenuViewController.h>

@implementation PVMenuController

-(void) changeSelected:(PVOptions)option {
    if (self.selectedOption == option) return; // this would realistically never happen because the only time we'd call this function is when we actually change selected

    switch (option) {
        case Respring: {
            [self.viewController.selected setText:@"Restart SpringBoard"];
            break;
        }
        case RebootUserspace: {
            [self.viewController.selected setText:@"Reboot Userspace"];
            break;
        }
        case PowerOff: {
            [self.viewController.selected setText:@"Power Off"];
            break;
        }
    }
}

@end