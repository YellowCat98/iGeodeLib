#include <Geode/Geode.hpp>
#include <Geode/Modify/MenuLayer.hpp>
#include "iGeodeLib.hpp"
#include <string>

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        std::string iOSVersionStr = iGeodeLib::iOSVersion();

        std::string iOSVersion = "You are running iOS" + iOSVersionStr;

        FLAlertLayer::create("Hello", iOSVersion.c_str(), "idc")->show();
    }
};