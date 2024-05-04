#include <Geode/Geode.hpp>
#include <Geode/modify/MenuLayer.hpp>

using namespace geode::prelude;

class $modify(MenuLayer) {
public:
    bool init() {
        if (!MenuLayer::init()) return false;
        
        auto label = Label::createWithBMFont("bigFont.fnt", "");
        label->setPosition(Vec2(100, 100)); // Adjust position as needed
        this->addChild(label);

        this->schedule([=](float dt) {
            int fps = Director::getInstance()->getFrameRate();
            label->setString(fmt::format("FPS {}", fps));
        }, "update_fps");

        return true;
    }
};
