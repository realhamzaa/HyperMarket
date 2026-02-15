# 🚀 Hyper Pro - Clean Architecture Flutter Project

## 📋 نظرة عامة

مشروع Flutter احترافي مبني على **Clean Architecture** مع **Riverpod** لإدارة الحالة.

### 🏗️ البنية المعمارية

```
lib/
├── core/                      # الطبقة الأساسية
│   ├── constants/            # الثوابت
│   ├── errors/               # Failures & Exceptions
│   ├── network/              # Dio Client + Network Info
│   ├── database/             # Drift Database
│   ├── theme/                # Material 3 Theme
│   ├── routing/              # go_router
│   ├── di/                   # Dependency Injection (Riverpod)
│   └── utils/                # مساعدات عامة
│
├── features/                  # الميزات (Feature-based)
│   ├── auth/                 # مثال: Authentication
│   │   ├── data/
│   │   │   ├── datasources/  # API + Local
│   │   │   ├── models/       # JSON Models
│   │   │   └── repositories/ # Repository Implementation
│   │   ├── domain/
│   │   │   ├── entities/     # Business Entities
│   │   │   ├── repositories/ # Repository Contracts
│   │   │   └── usecases/     # Business Logic
│   │   └── presentation/
│   │       ├── providers/    # Riverpod Providers
│   │       ├── screens/      # UI Screens
│   │       └── widgets/      # UI Components
│   │
│   └── home/                 # مثال: Home Feature
│       └── ... (نفس الهيكل)
│
└── main.dart                 # Entry Point
```

---

## 🔧 القرارات التقنية

### State Management: **Riverpod** ✅
**لماذا؟**
- Type-safe أفضل من Provider
- Performance ممتاز
- أحدث وأقل Bugs
- Community كبير

### Database: **Drift** ✅
**لماذا Drift بدل Isar؟**
- Type-safe queries
- Migrations أسهل
- Community أكبر وأكثر نضوجاً
- أفضل للموبايل

### Network: **Dio** ✅
**لماذا؟**
- Interceptors قوية
- Retry mechanism
- Better error handling
- Pretty logging

### Routing: **go_router** ✅
**لماذا؟**
- Declarative routing
- Deep links support
- URL-based navigation
- Type-safe routes

### Responsive: **flutter_screenutil** ✅
**لماذا بدل responsive_framework؟**
- أخف وزناً
- أسهل استخدام
- Performance أفضل

### Forms: **flutter_form_builder** ✅
**لماذا بدل formz؟**
- أكثر استقراراً
- Validators جاهزة
- Community أكبر

### Localization: **easy_localization** ✅
**لماذا؟**
- أسهل من intl
- JSON-based
- Runtime language switching

---

## 📦 المكتبات المستخدمة

### Core
- `flutter_riverpod` - State management
- `riverpod_annotation` - Code generation
- `fpdart` - Functional programming (Either/Result)
- `go_router` - Navigation
- `equatable` - Value equality

### Network
- `dio` - HTTP client
- `pretty_dio_logger` - Network logging
- `connectivity_plus` - Network status

### Database
- `drift` - SQLite ORM
- `sqlite3_flutter_libs` - Native SQLite
- `shared_preferences` - Simple storage

### Serialization
- `freezed` - Immutable classes
- `json_annotation` - JSON serialization

### UI/UX
- `flutter_screenutil` - Responsive design
- `cached_network_image` - Image caching
- `shimmer` - Loading effects
- `flutter_svg` - SVG support

### Utils
- `logger` - Logging
- `intl` - Internationalization
- `image_picker` - Camera/Gallery
- `permission_handler` - Permissions
- `mobile_scanner` - QR/Barcode

### Testing
- `mocktail` - Mocking
- `very_good_analysis` - Linting

---

## 🚀 البدء

### 1. التثبيت

```bash
# Clone المشروع
cd hyper_pro

# تثبيت المكتبات
flutter pub get

# Generate Code (Freezed, Riverpod, Drift)
dart run build_runner build --delete-conflicting-outputs
```

### 2. التشغيل

```bash
# Debug
flutter run

# Release
flutter run --release
```

### 3. بناء APK

```bash
# Debug APK
flutter build apk --debug

# Release APK
flutter build apk --release

# Split APKs (أصغر حجماً)
flutter build apk --split-per-abi --release
```

الملف يكون في:
```
build/app/outputs/flutter-apk/app-release.apk
```

---

## 📱 تغيير Package Name

### Android

1. افتح `android/app/build.gradle`
```gradle
defaultConfig {
    applicationId "com.yourcompany.appname"  // غيّر هنا
}
```

2. غيّر اسم المجلدات في:
```
android/app/src/main/kotlin/com/yourcompany/appname/
```

### iOS

1. افتح في Xcode
2. Runner → General → Bundle Identifier

---

## 🎨 الثيم

### Material 3 Theme
- Dark mode جاهز
- Light mode (اختياري)
- Liquid Glass design
- RTL كامل للعربية

### الألوان
```dart
Primary:     #6C5CE7  (بنفسجي)
Secondary:   #00B894  (أخضر نعناعي)
Accent:      #FD79A8  (وردي)
Background:  #0F0F1E  (أسود مزرق)
```

---

## 🌍 اللغات

### المدعومة
- العربية (RTL) ✅
- الإنجليزية ✅

### إضافة لغة جديدة
1. أضف ملف في `assets/translations/xx.json`
2. في `main.dart`:
```dart
supportedLocales: [
  Locale('ar'),
  Locale('en'),
  Locale('xx'), // اللغة الجديدة
]
```

---

## 🧪 Testing

```bash
# Unit Tests
flutter test

# Widget Tests
flutter test test/widget_test.dart

# Integration Tests
flutter test integration_test/
```

---

## 📝 Code Generation

عند إضافة:
- Freezed models
- Riverpod providers
- Drift tables

شغّل:
```bash
dart run build_runner build --delete-conflicting-outputs

# أو watch mode
dart run build_runner watch
```

---

## 🔐 Environment Variables

للـ API Keys والـ Secrets:
1. أنشئ `.env` file
2. أضفه في `.gitignore`
3. استخدم `flutter_dotenv`

---

## 📊 Performance Tips

### 1. استخدم const
```dart
const Text('Hello')  // ✅
Text('Hello')        // ❌
```

### 2. Riverpod autodispose
```dart
@riverpod
Future<Data> fetchData(ref) async {
  // ✅ ينظف نفسه تلقائياً
}
```

### 3. CachedNetworkImage
```dart
CachedNetworkImage(
  imageUrl: url,
  placeholder: (_, __) => Shimmer(...),
)
```

---

## 🐛 Troubleshooting

### مشكلة: build_runner errors
```bash
flutter clean
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

### مشكلة: Drift errors
تأكد من:
- `database.g.dart` موجود
- Tables معرّفة صح
- Migration صحيح

### مشكلة: Riverpod errors
```bash
# تأكد من code generation
dart run build_runner build
```

---

## 📚 Resources

### Documentation
- [Flutter](https://flutter.dev)
- [Riverpod](https://riverpod.dev)
- [Drift](https://drift.simonbinder.eu)
- [go_router](https://pub.dev/packages/go_router)

### Clean Architecture
- [Uncle Bob's Clean Architecture](https://blog.cleancoder.com/uncle-bob/2012/08/13/the-clean-architecture.html)
- [Flutter Clean Architecture](https://resocoder.com/flutter-clean-architecture-tdd/)

---

## ✅ TODO List

### المرحلة 1 - Setup ✅
- [x] هيكل المشروع
- [x] pubspec.yaml
- [x] Core layer
- [x] Theme + Localization
- [x] Network + Database

### المرحلة 2 - Features
- [ ] Auth Feature كامل
  - [ ] Login screen
  - [ ] Repository
  - [ ] Providers
- [ ] Home Feature
  - [ ] List view
  - [ ] API integration
  - [ ] Offline-first

### المرحلة 3 - Testing
- [ ] Unit tests
- [ ] Widget tests
- [ ] Integration tests

### المرحلة 4 - Polish
- [ ] Icons & Splash
- [ ] Performance optimization
- [ ] Error handling refinement

---

## 📄 License

MIT License - استخدام حر

---

## 👨‍💻 المطور

بناه بـ ❤️ باستخدام Flutter + Clean Architecture

**النسخة:** 1.0.0  
**آخر تحديث:** فبراير 2026

---

## 🎯 Next Steps

1. **أكمل Auth Feature:**
   - Login screen UI
   - API integration
   - Token management

2. **أكمل Home Feature:**
   - Products list
   - Offline caching
   - Pull to refresh

3. **أضف Features جديدة:**
   - POS
   - Invoices
   - Reports

4. **Testing:**
   - اكتب tests للـ UseCases
   - Widget tests للـ screens

---

**🚀 Happy Coding!**
