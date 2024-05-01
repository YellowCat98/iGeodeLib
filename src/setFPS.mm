#import <Geode/Geode.hpp>
#include "setFPS.h"
#import <cocos2d.h> // hopefully it works

using namespace geode::prelude;
using namespace cocos2d;

// i never coded in objective c btw

void setFPS(int fps) {
    CCDirector::sharedDirector()->setAnimationInterval(1.0f / fps);
}