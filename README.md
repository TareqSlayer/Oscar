# IPTV Pro - تطبيق بث القنوات التلفزيونية

تطبيق أندرويد احترافي لبث القنوات التلفزيونية والأحداث الرياضية مع مشغل فيديو متطور.

## المميزات

✅ **واجهة مستخدم عصرية** - Material Design 3
✅ **مشغل فيديو احترافي** - Media3/ExoPlayer
✅ **دعم جودات متعددة** - HLS, DASH, MP4
✅ **نظام تشفير آمن** - XOR Encryption
✅ **توافق كامل مع Google Play** - جميع المتطلبات مطبقة
✅ **أداء عالي** - ProGuard Obfuscation
✅ **دعم أندرويد 8 وما فوق** - API 26+

## المتطلبات

- Android Studio Hedgehog (2023.1.1) أو أحدث
- Java 11 أو أحدث
- Android SDK 34 (API Level 34)
- Gradle 8.4

## التثبيت والبناء

### الخطوة 1: فتح المشروع في Android Studio
```bash
1. افتح Android Studio
2. اختر "Open" وحدد مجلد المشروع
3. انتظر حتى يتم تحميل جميع المكتبات
```

### الخطوة 2: بناء التطبيق
```bash
# من سطر الأوامر
./gradlew build

# أو من Android Studio
Build > Build Bundle(s) / APK(s) > Build APK(s)
```

### الخطوة 3: توليد APK
```bash
# APK للتطوير
./gradlew assembleDebug

# APK للإصدار (مع التوقيع)
./gradlew assembleRelease
```

## هيكل المشروع

```
IPTVApp/
├── app/
│   ├── src/
│   │   ├── main/
│   │   │   ├── java/com/iptv/app/
│   │   │   │   ├── ui/
│   │   │   │   │   ├── activity/      # Activities
│   │   │   │   │   └── adapter/       # RecyclerView Adapters
│   │   │   │   └── network/           # Network utilities
│   │   │   ├── res/
│   │   │   │   ├── layout/            # XML Layouts
│   │   │   │   ├── values/            # Resources
│   │   │   │   ├── drawable/          # Drawables
│   │   │   │   └── xml/               # Configuration files
│   │   │   └── AndroidManifest.xml
│   │   ├── test/                      # Unit tests
│   │   └── androidTest/               # Instrumented tests
│   ├── build.gradle.kts               # App build configuration
│   └── proguard-rules.pro              # ProGuard rules
├── gradle/                            # Gradle wrapper
├── build.gradle.kts                   # Root build configuration
├── settings.gradle.kts                # Project settings
└── gradle.properties                  # Gradle properties
```

## المكتبات المستخدمة

- **androidx.appcompat** - AppCompat library
- **androidx.media3** - Media3/ExoPlayer
- **com.google.android.material** - Material Design 3
- **com.squareup.okhttp3** - HTTP Client
- **com.bumptech.glide** - Image Loading
- **com.google.code.gson** - JSON Parser
- **com.jakewharton.timber** - Logging

## الأنشطة الرئيسية

### SplashActivity
شاشة البداية مع تأثير التحميل

### HomeActivity
عرض الفئات الرئيسية (القنوات العربية، الدولية، الرياضة، إلخ)

### ChannelsActivity
عرض القنوات ضمن فئة معينة

### PlayerActivity
مشغل الفيديو الاحترافي مع جميع التحكمات

### EventsActivity
عرض الأحداث الرياضية المباشرة

### FavoritesActivity
عرض القنوات المفضلة

## التوافق

- **الحد الأدنى:** Android 8 (API 26)
- **الهدف:** Android 15 (API 35)
- **الاختبار على:** Android 10+

## الأمان

✅ ProGuard Obfuscation
✅ SSL/TLS Support
✅ Secure Network Communication
✅ Data Extraction Rules
✅ Backup Configuration

## توليد APK للإصدار

### الخطوة 1: إنشاء Keystore
```bash
keytool -genkey -v -keystore release.keystore \
  -keyalg RSA -keysize 2048 -validity 10000 \
  -alias release_key
```

### الخطوة 2: التوقيع والبناء
```bash
./gradlew assembleRelease \
  -Pandroid.injected.signing.store.file=release.keystore \
  -Pandroid.injected.signing.store.password=YOUR_PASSWORD \
  -Pandroid.injected.signing.key.alias=release_key \
  -Pandroid.injected.signing.key.password=YOUR_PASSWORD
```

### الخطوة 3: التحقق من APK
```bash
apksigner verify app/build/outputs/apk/release/app-release.apk
```

## متطلبات Google Play

✅ Target API Level 34 (Android 15)
✅ 64-bit Support
✅ Privacy Policy
✅ Content Rating
✅ App Signing

## استكشاف الأخطاء

### مشكلة: فشل البناء
**الحل:** تأكد من تثبيت Android SDK 34 و Java 11

### مشكلة: عدم تحميل البيانات
**الحل:** تحقق من اتصال الإنترنت والـ API

### مشكلة: عدم تشغيل الفيديو
**الحل:** تأكد من دعم صيغة الفيديو (HLS/DASH)

## الترخيص

هذا المشروع مرخص تحت MIT License

## الدعم

للمساعدة والدعم، يرجى التواصل عبر البريد الإلكتروني أو فتح issue.

---

**تم إنشاؤه بواسطة:** Manus AI
**الإصدار:** 1.0.0
**آخر تحديث:** 2026-04-21
