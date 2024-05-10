#include <Geode/Geode.hpp>
#include "main.hpp"

using namespace geode::prelude;

class $modify(MenuLayer) {
        void onMoreGames(CCObject*) {
        showAlert("Hi", "hello");
    }
}
