# iGeodeLib
- iGeodeLib is a library for developers that want to make iOS mods on geode!!! (you might not need geode for this, but haven't tested.)

# Example:
```c++
#include <iGeodeLib.hpp>
#include <Geode/Geode.hpp>
#include <Geode/Modify/MenuLayer.hpp>

using namespace geode::prelude;

class $modify(MenuLayer) {
    void onMoreGames(CCObject*) {
        iGeodeLib::showAlert("Low Battery", "20% Battery Remaining", "Close");
    }
};
```

> This SHOULD show you a "20% battery remaining" popup.
(this project is unfinished as of now, the CShowAlert function is a little broken :3)