#import <Geode/Geode.hpp>
#import <Geode/Modify/MenuLayer.hpp>
#include "main.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        NSString *iconPath = Mod::get()->getResourcesDir() / "geode-logo-hd.png";
        setAppIcon(iconPath);
    }
};