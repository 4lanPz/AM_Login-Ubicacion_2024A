# Login y ubicación en Flutter
APK: https://www.mediafire.com/file/4h371tbqkx7nhpb/Login-Ubicacion_AlanPerez.apk/file
WEB: https://proyecto-43391.web.app

## Herramientas

- Visual Studio Code
- Flutter
- Android Studio
- Node
- Firebase

## Descargar paquetes flutter

Ejecutar el siguiente comando para poder descargar todo lo necesario del proyecto

```bash
flutter pub get  
```

## Variables

Ejecutar el siguiente comando para poder generar sus variables de Firebase

```bash
flutter pub global activate flutterfire_cli
flutterfire configure    
```

Para firebase hosting ejecutar

```bash
npm install -g firebase-tools
npx firebase login
npx firebase hosting init
```

Agregar sus variables web para iniciar sesion en web y agregarlas en index.html

```bash
flutter deploy web

npx firebase deploy
```

## Generar APK
Ejecutar el siguiente comando y buscar la APK generada en build/app/flutter-apk/
```bash
flutter build apk --split-per-abi
```



