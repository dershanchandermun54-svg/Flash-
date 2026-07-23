# Flash - E-hailing Driver Application

Flash is a professional, modern e-hailing driver application built with Flutter. It provides drivers with an intuitive interface to manage rides, track earnings, and deliver exceptional service.

## Features

✨ **Core Features**
- 🔐 Secure Authentication (Firebase Auth, Google Sign-In)
- 📍 Real-time Location Tracking & Maps Integration
- 🚗 Active Ride Management
- 💰 Earnings Dashboard & Transaction History
- 👤 Driver Profile Management
- 🔔 Push Notifications
- 💳 Payment Integration (Stripe)
- ⭐ Ratings & Reviews

✨ **User Experience**
- 🎨 Beautiful, intuitive UI with Material Design 3
- 🌙 Dark & Light Theme Support
- 🏃 Smooth Animations
- 📱 Responsive Design
- ♿ Accessibility Features

## Tech Stack

### Frontend
- **Framework**: Flutter 3.0+
- **State Management**: Riverpod
- **Routing**: GoRouter
- **UI**: Material Design 3, Google Fonts

### Backend Integration
- **Authentication**: Firebase Auth
- **API**: Retrofit + Dio
- **Real-time**: Firebase Cloud Messaging
- **Database**: Hive (Local Storage)
- **Maps**: Google Maps Platform

### Payments
- **Payment Gateway**: Stripe

## Project Structure

```
lib/
├── config/
│   ├── routes/
│   │   └── app_router.dart
│   └── theme/
│       └── app_theme.dart
├── data/
│   ├── models/
│   ├── services/
│   └── repositories/
├── domain/
│   └── entities/
├── presentation/
│   ├── screens/
│   │   ├── splash/
│   │   ├── auth/
│   │   ├── home/
│   │   ├── ride/
│   │   ├── profile/
│   │   ├── earnings/
│   │   └── settings/
│   ├── widgets/
│   └── providers/
└── main.dart
```

## Getting Started

### Prerequisites
- Flutter SDK >= 3.0.0
- Dart >= 3.0.0
- Android Studio / Xcode
- Git

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/flash.git
   cd flash
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Generate code (for Hive, Retrofit, etc.)**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```

4. **Configure Firebase**
   - Download `google-services.json` (Android) from Firebase Console
   - Download `GoogleService-Info.plist` (iOS) from Firebase Console
   - Place in respective platform folders

5. **Run the app**
   ```bash
   flutter run
   ```

## Configuration

### Environment Variables
Create a `.env` file in the project root:
```env
FIREBASE_PROJECT_ID=your_firebase_project_id
STRIPE_PUBLISHABLE_KEY=your_stripe_key
API_BASE_URL=your_api_url
```

## Available Scripts

```bash
# Run the app in debug mode
flutter run

# Run with verbose logging
flutter run -v

# Build release APK
flutter build apk --release

# Build iOS app
flutter build ios --release

# Run tests
flutter test

# Generate code
flutter pub run build_runner build

# Format code
dart format lib/

# Analyze code
flutter analyze
```

## Key Screens

### 1. Authentication
- **Login Screen**: Email/password and social authentication
- **Signup Screen**: New driver registration with validation

### 2. Home Dashboard
- Status indicator (Online/Offline)
- Today's earnings summary
- Quick action cards

### 3. Active Ride
- Real-time map view
- Passenger information
- Trip details & navigation
- Communication tools

### 4. Earnings
- Total balance display
- Transaction history
- Period-based earnings (Today, Week, Month, All-time)
- Withdrawal options

### 5. Driver Profile
- Personal information
- Vehicle details
- Rating & trip count
- Profile editing

### 6. Settings
- Account management
- Preferences & notifications
- Privacy & security
- App information

## Dependencies

### State Management & Architecture
- `provider: ^6.0.0` - Reactive state management
- `riverpod: ^2.4.0` - Enhanced dependency injection
- `flutter_riverpod: ^2.4.0` - Flutter integration

### Networking & API
- `dio: ^5.3.1` - HTTP client
- `retrofit: ^4.1.0` - Type-safe REST client
- `google_maps_flutter: ^2.5.0` - Maps integration

### Authentication & Security
- `firebase_core: ^2.24.0` - Firebase core
- `firebase_auth: ^4.14.0` - Authentication
- `google_sign_in: ^6.2.0` - Google login

### Storage & Database
- `hive: ^2.2.3` - Local database
- `hive_flutter: ^1.1.0` - Flutter integration
- `shared_preferences: ^2.2.1` - Key-value storage

### Location & Navigation
- `geolocator: ^10.0.0` - Location services
- `geocoding: ^2.1.0` - Address geocoding
- `go_router: ^11.1.0` - Navigation routing

### UI & Animations
- `google_fonts: ^6.1.0` - Custom fonts
- `flutter_svg: ^2.0.7` - SVG rendering
- `animations: ^2.0.7` - Pre-built animations
- `cached_network_image: ^3.3.0` - Image caching

### Additional
- `intl: ^0.19.0` - Internationalization
- `logger: ^2.0.2+1` - Logging
- `flutter_stripe: ^9.4.0` - Payment processing

## API Integration

The app communicates with a backend API for:
- Driver authentication & authorization
- Ride management & matching
- Real-time location updates
- Payment processing
- User ratings & reviews

See `lib/data/services/` for API implementation details.

## Testing

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/your_test.dart

# Run with coverage
flutter test --coverage
```

## Build & Deployment

### Android
```bash
flutter build apk --release
# or
flutter build appbundle --release
```

### iOS
```bash
flutter build ios --release
cd ios
xcodebuild -workspace Runner.xcworkspace -scheme Runner -configuration Release -derivedDataPath build -archivePath build/Runner.xcarchive archive
xcodebuild -exportArchive -archivePath build/Runner.xcarchive -exportOptionsPlist ExportOptions.plist -exportPath build
```

## Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit changes (`git commit -m 'Add amazing feature'`)
4. Push to branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Code Style

- Follow [Dart Style Guide](https://dart.dev/guides/language/effective-dart/style)
- Run `dart format` before committing
- Use meaningful variable/function names
- Add comments for complex logic

## Troubleshooting

### Build Issues
```bash
# Clean and rebuild
flutter clean
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter run
```

### Firebase Configuration
- Ensure Firebase project is properly set up
- Check that JSON files are in correct locations
- Verify API keys in Firebase Console

### Maps Not Showing
- Verify Google Maps API key in AndroidManifest.xml and Info.plist
- Check that Maps API is enabled in Google Cloud Console

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Support

For support, email support@flashapp.com or open an issue on GitHub.

## Roadmap

- [ ] Offline mode support
- [ ] Advanced trip analytics
- [ ] Driver rewards program
- [ ] Integration with multiple payment providers
- [ ] Multi-language support
- [ ] Driver community features
- [ ] AI-powered suggestions
- [ ] Enhanced security features

---

**Made with ❤️ by the Flash Team**