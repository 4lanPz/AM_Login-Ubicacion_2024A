# Login y ubicación en Flutter

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



