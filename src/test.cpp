#include <Geode/Geode.hpp>
#include <Geode/Modify/MenuLayer.hpp>
#include "iGeodeLib.hpp"
#include <string>

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        iGeodeLib::faceID(showAlert("Face ID Success!", "cool face id", "idc"), showAlert("fail", "no face id", "bro shut up"));
    }
};