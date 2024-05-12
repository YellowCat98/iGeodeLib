#pragma once
#include <functional>

void showAlert(const char *title, const char *message, const char *Btn);
NSString *iOSVersion();
void CShowAlert(const char *title, const char *message, const char *Btn, std::function<void()> callback, const char *Btn2, std::function<void()> callback2);