#include <Geode/Geode.hpp>
#include <Geode/Modify/MenuLayer.hpp>
#include "iGeodeLib.hpp"
#include <string>

using namespace geode::prelude;

void onSuccess() {
    iGeodeLib::showAlert("Face ID Success!", "cool face id", "idc");
}

void onFail() {
    iGeodeLib::showAlert("fail", "no face id", "bro shut up");
}

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        
    }
};