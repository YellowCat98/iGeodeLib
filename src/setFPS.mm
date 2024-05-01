#import <Geode/geode.hpp>
#include "setFPS.h"
#import <cocos2d.h> // hopefully it works

using namespace geode::prelude;

// i never coded in objective c btw

void setFPS(int fps) {
    [[CCDirector sharedDirector] setAnimationInterval:1.0f / fps];
}