#!/bin/bash

# Di chuyển đến thư mục chứa package `data` (nơi khai báo phụ thuộc pigeon)
cd data

# Chạy lệnh sinh code qua FVM
fvm dart run pigeon \
  --input lib/base/pigeon_system/app_installed_pigeon_schema.dart \
  --dart_out lib/base/pigeon_system/app_installed_pigeon.g.dart \
  --kotlin_out ../android/app/src/main/kotlin/vn/com/codercobap/nekofocus/pigeon/AppInstalledPigeon.g.kt \
  --kotlin_package "vn.com.codercobap.nekofocus.pigeon" \
  --swift_out ../ios/Runner/pigeon/AppInstalledPigeon.g.swift

echo "✓ Đã sinh code Pigeon thành công!"
