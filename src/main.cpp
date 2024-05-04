#include <Geode/Geode.hpp>

using namespace geode::prelude;

class $modify(MenuLayer) {
    bool init() {
        if (!MenuLayer::init()) return false;
        auto label = Label::createWithBMFont("bigFont.fnt", "");
        this->addChild(label);

        this->schedule([=](float dt) {
            int fps = CCDirector::sharedDirector()->getFrameRate();
            label->setString(StringUtils::format("FPS %d", fps));
        }, "update fps");
        return true;
    }
}