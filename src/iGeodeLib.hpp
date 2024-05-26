#ifndef IGEODELIB_HPP
#define IGEODELIB_HPP

#pragma once
#include <functional>

namespace iGeodeLib {
  void showAlert(const char *title, const char *message, const char *Btn);
  std::string iOSVersion();
  void CShowAlert(const char *title, const char *message, const char *Btn, std::function<void()> callback = nullptr, const char *Btn2 = nullptr, std::function<void()> callback2 = nullptr);
  void faceID(std::function<void()> callback, std::function<void()> callback2);
}
#endif // IGEODELIB_HPP
