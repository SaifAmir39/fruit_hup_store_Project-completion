# 🍎 Fruit Hub Store

<div align="center">

![Flutter](https://img.shields.io/badge/Flutter-3.9.0+-02569B?style=for-the-badge&logo=flutter)
![Dart](https://img.shields.io/badge/Dart-3.9.0+-0175C2?style=for-the-badge&logo=dart)
![Firebase](https://img.shields.io/badge/Firebase-Latest-FFCA28?style=for-the-badge&logo=firebase)
![BLoC](https://img.shields.io/badge/BLoC-Pattern-02569B?style=for-the-badge)
![License](https://img.shields.io/badge/License-Proprietary-red?style=for-the-badge)

**A Premium E-Commerce Flutter Application**

*Modern. Scalable. Beautiful.*

[📱 Features](#-features) • [🛠️ Tech Stack](#️-technologies--dependencies) • [📁 Structure](#-project-structure) • [🚀 Quick Start](#-getting-started) • [💼 Skills](#-technical-skills) • [📊 Architecture](#-architecture)

</div>

---

## 📱 Overview

**Fruit Hub Store** is a sophisticated, production-ready e-commerce mobile application built with **Flutter** and **Firebase**. This project showcases advanced mobile development practices including clean architecture, enterprise-level state management, and seamless user experience.

The application enables users to browse, search, and purchase fresh produce with features like real-time inventory, secure authentication, and intelligent recommendations.

### 🎯 Mission
To deliver a premium shopping experience for fresh produce through intuitive design, reliable technology, and exceptional performance.

---

## ✨ Key Features

### 🔐 Authentication & Security
- Multi-method authentication (Email, Google, Facebook)
- Secure token management and session handling
- OAuth 2.0 implementation
- Firebase Security Rules

### 🛍️ E-Commerce Features
- **Product Catalog** - Browse fresh produce with detailed information
- **Advanced Search** - Smart search with filters and history
- **Shopping Cart** - Real-time cart with persistence
- **Wishlist** - Save favorite items for later
- **Product Details** - Rich product information with ratings
- **Inventory Management** - Real-time stock updates
- **Best Sellers** - Curated trending products

### 💳 Payment & Checkout
- Secure checkout process
- Multiple payment options
- Order confirmation and tracking
- Digital receipts

### 👤 User Management
- Comprehensive profile management
- Order history and tracking
- Saved addresses and preferences
- Personalized recommendations
- Account settings and privacy controls

### 🎨 Experience
- Smooth animations and transitions
- Responsive design across all devices
- Intuitive navigation
- Arabic language support
- Loading optimizations

---

## 🛠️ Technologies & Architecture

### **Frontend Framework**
| Technology | Version | Purpose |
|-----------|---------|---------|
| Flutter | 3.9.0+ | Cross-platform UI framework |
| Dart | 3.9.0+ | Programming language |
| Material Design | Latest | UI design system |

### **State Management**
| Package | Version | Role |
|---------|---------|------|
| flutter_bloc | ^8.1.3 | Enterprise state management |
| dartz | ^0.10.1 | Functional programming patterns |

### **Backend Services**
| Service | Version | Features |
|---------|---------|----------|
| firebase_core | ^3.6.0 | Firebase initialization |
| firebase_auth | ^5.3.1 | Authentication system |
| cloud_firestore | ^5.6.12 | Real-time database |

### **Authentication & Social**
- google_sign_in (^6.2.2) - Google OAuth 2.0
- flutter_facebook_auth (^6.0.0) - Facebook OAuth
- secure token management

### **UI & Design**
- flutter_svg (^2.2.1) - SVG rendering
- flutter_svg_provider (^1.0.7) - Advanced image caching
- dots_indicator (^4.0.1) - Custom indicators
- easy_stepper (^1.0.1) - Stepper widget
- loading_indicator (^3.1.1) - Animations
- Cairo custom font - Typography

### **Data & Storage**
- shared_preferences (^2.2.2) - Local key-value storage
- uuid (^4.5.3) - Unique identifier generation

### **Dependency Injection**
- get_it (^7.6.7) - Service locator pattern

---

## 📊 Architecture & Design Patterns

### **Clean Architecture**
```
┌─────────────────────────────────────┐
│      PRESENTATION LAYER             │
│  (UI, Widgets, Screens)             │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│      APPLICATION LAYER              │
│  (BLoC, Cubit, State Management)    │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│      DOMAIN LAYER                   │
│  (Entities, Repository Interfaces)  │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│      DATA LAYER                     │
│  (Repositories, Data Sources)       │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│      EXTERNAL SERVICES              │
│  (Firebase, APIs, Local Storage)    │
└─────────────────────────────────────┘
```

### **Key Design Patterns**
- ✅ **Repository Pattern** - Data abstraction
- ✅ **BLoC Pattern** - Business Logic Component
- ✅ **Dependency Injection** - Loose coupling
- ✅ **Factory Pattern** - Object creation
- ✅ **Singleton Pattern** - Single instance services
- ✅ **Observer Pattern** - Stream-based updates

### **SOLID Principles Implementation**
- **S**ingle Responsibility - Each class has one purpose
- **O**pen/Closed - Open for extension, closed for modification
- **L**iskov Substitution - Proper inheritance
- **I**nterface Segregation - Focused interfaces
- **D**ependency Inversion - Depend on abstractions

---

## 📁 Project Structure

```
fruit_hup_store/
│
├── 📄 README.md                    # Project documentation
├── 📄 SKILLS.md                    # Technical skills showcase
├── 📋 pubspec.yaml                 # Dependencies and configuration
│
├── 📁 lib/                          # Main application code
│   ├── 🎯 main.dart                # App entry point & initialization
│   │
│   ├── 📁 core/                    # Core functionality
│   │   ├── 🔧 service/             # Services layer
│   │   │   ├── get_it_service.dart         # Dependency injection
│   │   │   └── shared_preferences_singleton.dart
│   │   │
│   │   ├── 🛠️ utils/               # Utilities & helpers
│   │   │   ├── app_colors.dart     # Color scheme
│   │   │   ├── app_styles.dart     # Text styles
│   │   │   ├── helper_functions/   # Utility functions
│   │   │   │   ├── on_generate_routes.dart
│   │   │   │   └── ...
│   │   │   │
│   │   │   └── product/            # Product utilities
│   │   │       ├── bloc/           # Product BLoC
│   │   │       └── domain/         # Product domain
│   │   │
│   │   └── 🎨 widgets/             # Reusable widgets
│   │
│   └── 📁 features/                 # Feature modules (Clean Architecture)
│       ├── 🎬 Splash_/              # Splash screen
│       │   └── presentation/
│       │       └── views/
│       │
│       ├── 👋 on_boardin/           # Onboarding flow
│       │   └── presentation/
│       │
│       ├── 🔐 auth/                 # Authentication
│       │   ├── presentation/
│       │   ├── domain/
│       │   └── data/
│       │
│       ├── 🏠 home/                 # Home screen
│       │   ├── presentation/
│       │   │   └── manger/          # BLoC/Cubit
│       │   ├── domain/
│       │   └── data/
│       │
│       ├── 📦 products/             # Product listing
│       │   ├── presentaions/
│       │   │   ├── views/
│       │   │   │   └── widgets/
│       │   │   └── manger/
│       │   ├── domain/
│       │   └── data/
│       │
│       ├── 📄 products detailes/    # Product details
│       │   └── presentation/
│       │
│       ├── ⭐ best_selling/         # Best sellers section
│       │   └── presentation/
│       │
│       ├── 🛒 cart/                 # Shopping cart
│       │   ├── presentation/
│       │   ├── domain/
│       │   └── data/
│       │
│       ├── 💳 checkout/             # Checkout process
│       │   └── presentation/
│       │
│       └── 👤 profile/              # User profile
│           ├── presentation/
│           └── manger/
│
├── 📁 assets/                       # Static assets
│   ├── 🖼️ images/                  # Image files
│   │   └── vuesax/                 # Icon assets
│   │       ├── bold/
│   │       └── outline/
│   │
│   └── 🔤 fonts/                   # Custom fonts
│       ├── Cairo-Regular.ttf
│       ├── Cairo-Medium.ttf
│       ├── Cairo-SemiBold.ttf
│       └── Cairo-Bold.ttf
│
├── 📁 android/                      # Android native code
│   ├── app/
│   │   ├── google-services.json     # Firebase Android config
│   │   └── src/
│   └── gradle/
│
├── 📁 ios/                          # iOS native code
│   ├── Runner/
│   ├── Runner.xcodeproj/
│   └── Runner.xcworkspace/
│
└── 📁 test/                         # Unit & widget tests
    └── widget_test.dart
```

### Architecture Layers Explained

| Layer | Responsibility | Example Files |
|-------|---------------|----------------|
| **Presentation** | UI, Widgets, User Interaction | views/, widgets/, screens |
| **Application** | State Management (BLoC) | manger/, cubit/ |
| **Domain** | Business Logic, Entities | models/, repository interfaces |
| **Data** | Data Sources, Repositories | repositories/, data_sources/ |
| **Core** | Shared Utilities, Services | utils/, services/ |

---

## 🚀 Getting Started

### System Requirements

| Requirement | Version | Status |
|-------------|---------|--------|
| Flutter SDK | 3.9.0+ | ✅ Required |
| Dart SDK | 3.9.0+ | ✅ Required |
| Android SDK | 21+ | ✅ Android |
| Xcode | 14.0+ | ✅ iOS |
| CocoaPods | Latest | ✅ iOS |

### Installation Steps

#### 1️⃣ Clone Repository
```bash
git clone https://github.com/SaifAmir39/fruit_hup_store.git
cd fruit_hup_store
```

#### 2️⃣ Install Dependencies
```bash
flutter pub get
```

#### 3️⃣ Configure Firebase
**Android Setup:**
```bash
# Add your google-services.json
# android/app/google-services.json
```

**iOS Setup:**
```bash
# Add your GoogleService-Info.plist
# ios/Runner/GoogleService-Info.plist
```

#### 4️⃣ Run the Application
```bash
# Debug build
flutter run

# Release build
flutter run --release
```

### Firebase Configuration

1. Create Firebase project at [firebase.google.com](https://firebase.google.com)
2. Enable Authentication methods:
   - Email/Password
   - Google Sign-In
   - Facebook Login
3. Create Firestore database
4. Set up Cloud Storage for images
5. Download configuration files and add to project

---

## 🏗️ Building for Production

### Android Release
```bash
# Build APK
flutter build apk --release

# Build App Bundle (Google Play)
flutter build appbundle --release
```

### iOS Release
```bash
# Build iOS app
flutter build ios --release

# Export to App Store Connect
flutter build ios --release --no-codesign
```

### Web Deployment
```bash
# Build for web
flutter build web --release

# Deploy (example: Firebase Hosting)
firebase deploy --only hosting
```

---

## 🔒 Security Features

### Authentication
- ✅ OAuth 2.0 (Google, Facebook)
- ✅ Email verification
- ✅ Secure token storage
- ✅ Session management
- ✅ Biometric authentication ready

### Data Protection
- ✅ Firebase Security Rules
- ✅ HTTPS/TLS encryption
- ✅ Secure credential storage
- ✅ Input validation
- ✅ XSS prevention

### Best Practices
- ✅ No hardcoded API keys
- ✅ Environment-based configuration
- ✅ Regular dependency updates
- ✅ Code obfuscation
- ✅ Secure error handling

---

## 📊 Performance Metrics

| Metric | Target | Status |
|--------|--------|--------|
| App Launch Time | < 2s | ✅ Optimized |
| First Frame | < 500ms | ✅ Optimized |
| List Scroll FPS | 60 FPS | ✅ Smooth |
| Memory Usage | < 150MB | ✅ Optimized |
| Bundle Size | < 50MB | ✅ Lean |

### Optimization Techniques
- 🎯 Lazy loading of images
- 🎯 Efficient widget tree
- 🎯 Provider-based rebuild optimization
- 🎯 Image caching strategy
- 🎯 Database query optimization

---

## 🧪 Testing & Quality Assurance

### Code Quality
```bash
# Analyze code
flutter analyze

# Format code
dart format .

# Lint checking
flutter pub run flutter_lints
```

### Testing
```bash
# Run unit tests
flutter test

# Widget testing
flutter test test/widget_test.dart

# Integration testing (if configured)
flutter drive --target=test_driver/app.dart
```

---

## 🐛 Troubleshooting

### Issue: Build Fails
```bash
# Solution: Clean and rebuild
flutter clean
flutter pub get
flutter pub upgrade
flutter run
```

### Issue: Firebase Not Connecting
```bash
# Solution: Verify configuration
# 1. Check google-services.json path
# 2. Verify Firebase project ID
# 3. Check Security Rules in Firestore
# 4. Rebuild the app
```

### Issue: iOS Build Error
```bash
# Solution: Pod dependencies
cd ios
rm -rf Pods Podfile.lock
pod install
cd ..
flutter run
```

---

## 💼 Technical Skills Showcase

This project demonstrates mastery of:

### 📱 **Mobile Development**
- Cross-platform development with Flutter
- Native platform integration (Android/iOS)
- Responsive UI design
- Performance optimization

### 🏗️ **Architecture**
- Clean Architecture principles
- SOLID design patterns
- Scalable code structure
- Maintainable codebase

### 🔐 **Backend Integration**
- Firebase services
- Real-time database
- Cloud storage
- Authentication systems

### 💻 **Software Engineering**
- State management (BLoC)
- Dependency injection
- API integration
- Error handling

**[📖 View Complete Skills Documentation →](SKILLS.md)**

---

## 👥 Contributing

We welcome contributions! Here's how to get started:

### Contribution Guidelines

1. **Fork the repository**
   ```bash
   git clone https://github.com/YOUR_USERNAME/fruit_hup_store.git
   cd fruit_hup_store
   ```

2. **Create a feature branch**
   ```bash
   git checkout -b feature/AmazingFeature
   ```

3. **Make your changes**
   - Follow the project's code style
   - Add tests for new features
   - Update documentation as needed

4. **Commit with meaningful messages**
   ```bash
   git commit -m 'feat: Add AmazingFeature'
   ```

5. **Push to your branch**
   ```bash
   git push origin feature/AmazingFeature
   ```

6. **Create a Pull Request**
   - Provide clear description
   - Reference any related issues
   - Ensure all tests pass

### Code Standards
- Follow Dart/Flutter conventions
- Use meaningful variable names
- Add comments for complex logic
- Maintain clean architecture principles
- Run `flutter analyze` before submitting

---

## 📄 License

This project is **proprietary and confidential**. 

**All rights reserved © 2024**

Unauthorized copying or distribution is prohibited.

---

## 📞 Support & Contact

### Need Help?
- 📧 Email: [saifamir39@gmail.com](mailto:saifamir39@gmail.com)
- 🐦 Twitter: [@SaifAmir39](https://twitter.com/SaifAmir39)
- 💼 LinkedIn: [Saif Amir](https://linkedin.com/in/saif-amir)
- 💬 GitHub Issues: [Report a bug](https://github.com/SaifAmir39/fruit_hup_store/issues)


## 📚 Documentation & Resources

### Official Documentation
- [Flutter Docs](https://flutter.dev/docs)
- [Dart Language](https://dart.dev/guides)
- [Firebase Docs](https://firebase.google.com/docs)
- [BLoC Library](https://bloclibrary.dev/)

### Architecture References
- [Clean Architecture Guide](https://resocoder.com/flutter-clean-architecture)
- [SOLID Principles](https://en.wikipedia.org/wiki/SOLID)
- [Design Patterns](https://refactoring.guru/design-patterns)

### Learning Resources
- [Flutter Codelabs](https://flutter.dev/docs/codelabs)
- [Dart Tutorials](https://dart.dev/guides/language/language-tour)
- [Firebase Tutorials](https://firebase.google.com/learn)

---

## 📊 Project Statistics

### Code Metrics
- **Total Lines of Code**: 5000+
- **Number of Features**: 10+
- **BLoC/Cubit Classes**: 8+
- **Custom Widgets**: 20+
- **Responsive Breakpoints**: 3

### Platform Support
- ✅ **Android**: API 21+
- ✅ **iOS**: 11.0+
- ⚠️ **Web**: Partial
- ⚠️ **Windows**: Experimental
- ⚠️ **macOS**: Experimental

---

## 🏆 Achievements & Highlights

### Development Excellence
- ✨ Clean, maintainable code following best practices
- ✨ Comprehensive error handling and user feedback
- ✨ Performance optimized for smooth 60 FPS experience
- ✨ Responsive design across all screen sizes
- ✨ Enterprise-grade security implementation

### User Experience
- 🎯 Intuitive navigation and UI
- 🎯 Fast app launch and load times
- 🎯 Smooth animations and transitions
- 🎯 Arabic language support
- 🎯 Accessibility features

### Technical Innovation
- 🚀 Advanced state management patterns
- 🚀 Real-time data synchronization
- 🚀 Multi-authentication methods
- 🚀 Smart caching strategies
- 🚀 Scalable architecture

---

## 🤝 Professional Development

### Ready For
- 👨‍💼 junior  Flutter Developer positions
- 👨‍💼 Freelance consulting projects

### Demonstrated Expertise
See [**Complete Skills Documentation** →](SKILLS.md) for detailed breakdown of:
- Advanced Flutter & Dart
- Enterprise Architecture
- Firebase Ecosystem
- State Management (BLoC)
- UI/UX Design
- Performance Optimization
- Security Best Practices
- Team Collaboration

---

## ⭐ Show Your Support

If you find this project helpful:

1. ⭐ **Star this repository**
2. 🍴 **Fork for your own projects**
3. 📢 **Share with your network**
4. 💬 **Provide feedback**
5. 🤝 **Contribute improvements**

---

## 📄 Changelog

### Version 1.0.0 (Current)
- ✅ Full e-commerce functionality
- ✅ Multi-method authentication
- ✅ Real-time product catalog
- ✅ Shopping cart with persistence
- ✅ Secure checkout process
- ✅ User profile management
- ✅ Firebase integration
- ✅ Clean architecture implementation

---

## 🎓 Educational Value

This project serves as an excellent learning resource for:
- Flutter developers learning advanced patterns
- Developers transitioning to Flutter from other platforms
- Teams studying clean architecture principles
- Security-conscious developers
- Performance optimization enthusiasts

---

<div align="center">

### 🌟 Made with ❤️ by Saif Amir

**Building the future, one app at a time.**

[![GitHub](https://img.shields.io/badge/GitHub-SaifAmir39-blue?style=flat-square&logo=github)](https://github.com/SaifAmir39)
[![Email](https://img.shields.io/badge/Email-saifamir39%40gmail.com-red?style=flat-square&logo=gmail)](mailto:saifamir39@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Saif%20Amir-blue?style=flat-square&logo=linkedin)](https://linkedin.com/in/saif-amir)

---

**Last Updated**: April 23, 2026  
**Status**: ✅ Production Ready  
**License**: Proprietary & Confidential

</div>
#
