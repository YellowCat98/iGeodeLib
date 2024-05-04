#include <Geode/Geode.hpp>
#include <Geode/modify/MenuLayer.hpp>

using namespace geode::prelude;

class $modify(MenuLayer) {
    bool init() {
        if (!MenuLayer::init()) return false;
        auto label = CCLabelBMFont::create(" ", "bigFont.fnt");
        this->addChild(label);

        this->schedule([=](float dt) {
            int fps = CCDirector::sharedDirector()->getFrameRate();
            label->setString(StringUtils::format("FPS %d", fps));
        }, "update fps");
        return true;
    }
};