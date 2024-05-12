#pragma once
#include <functional>

void showAlert(const char *title, const char *message, const char *Btn);
void iOSVersion();
void (const char *title, const char *message, const char *Btn, std::function<void()> callback = nullptr, const char *Btn2 = nullptr, std::function<void()> callback2 = nullptr);