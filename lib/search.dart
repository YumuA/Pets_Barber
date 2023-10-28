import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Search extends StatefulWidget {
  const Search({Key? key});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<dynamic> searchData = [];

  @override
  void initState() {
    super.initState();
    fetchDataFromAPI();
  }

  Future<void> fetchDataFromAPI() async {
    final response = await http.get(Uri.parse('http://localhost:3000/test'));

    if (response.statusCode == 200) {
      setState(() {
        searchData = jsonDecode(response.body);
      });
    } else {
      print('Error al obtener datos: ${response.statusCode}');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey,
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Búsqueda en la API',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          if (searchData.isNotEmpty)
            Column(
              children: searchData.map((item) {
                return Card(
                  child: ListTile(
                    title: Text('Nombre: ${item['nombre']}'),
                    subtitle: Text('Raza: ${item['raza']}'),
                    // Agrega más datos según la estructura de tu API
                  ),
                );
              }).toList(),
            )
          else
            const Text(
              'Cargando datos...',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
        ],
      ),
    );
  }
}
