#include <Geode/Geode.hpp>
#include <Geode/modify/MenuLayer.hpp>

using namespace geode::prelude;

#include <Geode/Geode.hpp>
#include "cocos2d.h"
#include "fmt/format.h"

using namespace cocos2d;
using namespace geode::prelude;

class $modify(MyMenuLayer, MenuLayer) {
public:
    bool init() {
        if (!MenuLayer::init()) return false;

        auto label = CCLabelBMFont::create(" ", "bigFont.fnt");
        label->setPosition(ccp(100, 100)); // Adjust position as needed
        label->setID("fps-label");
        this->addChild(label);

        this->schedule(schedule_selector(MyMenuLayer::updateFPS), 1.0f); // Schedule update
        return true;
    }

    void updateFPS(float dt) {
        int fps = CCDirector::sharedDirector()->getFrameRate();
        auto label = this->getChildByIDRecursive("fps-label");
        if (label) {
            label->setString(fmt::format("FPS {}", fps).c_str());
        }
    }
};
