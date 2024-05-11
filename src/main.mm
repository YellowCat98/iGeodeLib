#import <Geode/Geode.hpp>
#import <Geode/Modify/MenuLayer.hpp>
#import <UIKit/UIKit.h>
#include "main.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        std::string iconPathStr = Mod::get()->getResourcesDir().string() + "/geode-logo-hd.png";
        NSString *iconPath = [NSString stringWithUTF8String:iconPathStr.c_str()];
        setAppIcon(iconPath);
    }
};