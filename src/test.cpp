#include <Geode/Geode.hpp>
#include <Geode/Modify/MenuLayer.hpp>
#include "iGeodeLib.hpp"
#include <string>

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        std::string iOSVersionStr = iGeodeLib::iOSVersion();

        const char* iOSVersion = iOSVersionStr.c_str();

        FLAlertLayer::create("Hello", ("you are running ios" + iOSVersion).c_str(), "idc")->show();
    }
};