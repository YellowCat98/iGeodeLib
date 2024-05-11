#import <Geode/Geode.hpp>
#import <Geode/Modify/MenuLayer.hpp>
#include "main.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
        void onMoreGames(CCObject*) {
        log::info("Hello");
    }
};