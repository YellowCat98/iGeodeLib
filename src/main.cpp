#include <Geode/Geode.hpp>
#include <Geode/Modify/MenuLayer.hpp>
#include "main.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
        void onMoreGames(CCObject*) {
        showAlert("Hi", "hello");
    }
}
