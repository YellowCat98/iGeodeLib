#import <Geode/geode.hpp>

// Use the $modify macro to modify MenuLayer
$modify(MenuLayer)
- (void)onMoreGames:(CCObject*)sender;
@end

// Use the $end macro to end the modification
$end

@implementation MenuLayer
- (void)onMoreGames:(CCObject*)sender {
    [geode::prelude::FLAlertLayer::create:@"hello" message:@"h" cancelButtonTitle:@"h" otherButtonTitle:nil]->show();
}
@end
