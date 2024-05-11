#import <Geode/Geode.hpp>
#import <Geode/Modify/MenuLayer.hpp>
#import <UIKit/UIKit.h>
#include "main.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        std::string path = Mod::get()->getResourcesDir() / "geode-logo.png";
    }
};