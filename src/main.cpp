#include <Geode/geode.hpp>
#include "setFPS.h"

using namespace geode::prelude;

class $modify(MyMenuLayer, MenuLayer) {
    bool init() {
        if (MenuLayer::init()) return false;
        auto fpsLabel = CCLabelBMFont::create("FPS: ", "bigFont.fnt");
        this->addChild(fpsLabel);

        this->scheuleUpdate();
        return true;
    }
    void onMoreGames(CCObject*) {
        setFPS(144);
    }
    void MyMenuLayer::update(float dt) {
        int currentFPS = (int)(1.0f / dt);

        char text[10];
        sprintf(text, "FPS: %d", currentFPS);
        fpsLabel->setString(text);
    }
};