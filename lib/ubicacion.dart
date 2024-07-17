import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'loginpage.dart';

class Ubicacion extends StatefulWidget {
  const Ubicacion({super.key, required this.title});

  final String title;

  @override
  State<Ubicacion> createState() => _UbicacionState();
}

class _UbicacionState extends State<Ubicacion> {
  String _latitudeMessage = "Cargando latitud...";
  String _longitudeMessage = "Cargando longitud...";
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    setState(() {
      _isLoading = true;
      _latitudeMessage = "Cargando latitud...";
      _longitudeMessage = "Cargando longitud...";
    });

    bool serviceEnabled;
    LocationPermission permission;

    // Verifica si el servicio de ubicación está habilitado
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      setState(() {
        _latitudeMessage = "El servicio de ubicación está deshabilitado.";
        _longitudeMessage = "";
        _isLoading = false;
      });
      return;
    }

    // Verifica si se tienen los permisos de ubicación
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        setState(() {
          _latitudeMessage = "Los permisos de ubicación han sido denegados.";
          _longitudeMessage = "";
          _isLoading = false;
        });
        return;
      }
    }

    if (permission == LocationPermission.deniedForever) {
      setState(() {
        _latitudeMessage =
            "Los permisos de ubicación han sido denegados permanentemente.";
        _longitudeMessage = "";
        _isLoading = false;
      });
      return;
    }

    // Obtiene la ubicación actual
    Position position = await Geolocator.getCurrentPosition();
    setState(() {
      _latitudeMessage = "Latitud: ${position.latitude}";
      _longitudeMessage = "Longitud: ${position.longitude}";
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        iconTheme: IconThemeData(color: Colors.black), // Color del ícono
        actions: [
          IconButton(
            icon: Icon(Icons.logout), // Icono de cerrar sesión
            onPressed: () {
              // Navegar de regreso a la pantalla de inicio de sesión y cerrar sesión
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
                (Route<dynamic> route) => false,
              );
            },
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Ubicación actual:',
            ),
            _isLoading
                ? CircularProgressIndicator() // Indicador de carga
                : Column(
                    children: [
                      Text(
                        _latitudeMessage,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        _longitudeMessage,
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                    ],
                  ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _isLoading ? null : _getCurrentLocation,
              child: const Text('Actualizar Ubicación'),
            ),
          ],
        ),
      ),
    );
  }
}
