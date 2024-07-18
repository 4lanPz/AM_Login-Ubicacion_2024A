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

## Capturas

### WEB:
![image](https://github.com/user-attachments/assets/521458d7-7505-4904-97ed-ab798de426c6)

![image](https://github.com/user-attachments/assets/1d8df62d-06d6-49cf-a3e9-b0cbbfc7b6b7)

### MOVIL:
![WhatsApp Image 2024-07-18 at 15 01 12](https://github.com/user-attachments/assets/87724630-a3ac-4995-9d0c-19efa57ac511)


![WhatsApp Image 2024-07-18 at 15 01 12 (1)](https://github.com/user-attachments/assets/aa3a5459-c3eb-423c-8821-4d6b53d13d59)






