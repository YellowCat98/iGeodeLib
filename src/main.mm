#import <Geode/Geode.hpp>
#import <Geode/Modify/MenuLayer.hpp>
#import <UIKit/UIKit.h>
#include "main.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        auto *iconPath = (Mod::get()->getResourcesDir() / "geode-logo.png").string;

        NSString *iconPathNS = [NSString stringWithUTF8String:iconPathString];

        setAppIcon(iconPathNS);

    }
};