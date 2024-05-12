#include <Geode/Geode.hpp>
#include <Geode/Modify/MenuLayer.hpp>
#include "iGeodeLib.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        iGeodeLib::CShowAlert("Hello", "hi", "go away", nullptr, "hi", nullptr);
    }
};