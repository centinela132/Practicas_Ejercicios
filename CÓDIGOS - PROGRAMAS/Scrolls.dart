import 'package:flutter/material.dart';

class ClassScroll extends StatelessWidget {
  const ClassScroll({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> libros = [
      {
        'titulo': 'Cien años de soledad', 
        'autor': 'Gabriel García Márquez',
        'imagen': 'https://images.pexels.com/photos/1926988/pexels-photo-1926988.jpeg'
      },
      {
        'titulo': 'Don Quijote de la Mancha', 
        'autor': 'Miguel de Cervantes',
        'imagen': 'https://images.pexels.com/photos/1275235/pexels-photo-1275235.jpeg'
      },
      {
        'titulo': 'El principito', 
        'autor': 'Antoine de Saint-Exupéry',
        'imagen': 'https://images.pexels.com/photos/6744786/pexels-photo-6744786.jpeg'
      },
      {
        'titulo': '1984', 
        'autor': 'George Orwell',
        'imagen': 'https://images.pexels.com/photos/1370298/pexels-photo-1370298.jpeg'
      },
      {
        'titulo': 'La sombra del viento', 
        'autor': 'Carlos Ruiz Zafón',
        'imagen': 'https://images.pexels.com/photos/1370295/pexels-photo-1370295.jpeg'
      },
      {
        'titulo': 'Rayuela', 
        'autor': 'Julio Cortázar',
        'imagen': 'https://images.pexels.com/photos/1370296/pexels-photo-1370296.jpeg'
      },
      {
        'titulo': 'Crimen y castigo', 
        'autor': 'Fiódor Dostoyevski',
        'imagen': 'https://images.pexels.com/photos/1370297/pexels-photo-1370297.jpeg'
      },
      {
        'titulo': 'Orgullo y prejuicio', 
        'autor': 'Jane Austen',
        'imagen': 'https://images.pexels.com/photos/1370294/pexels-photo-1370294.jpeg'
      },
      {
        'titulo': 'Los juegos del hambre', 
        'autor': 'Suzanne Collins',
        'imagen': 'https://images.pexels.com/photos/1370293/pexels-photo-1370293.jpeg'
      },
      {
        'titulo': 'Harry Potter y la piedra filosofal', 
        'autor': 'J.K. Rowling',
        'imagen': 'https://images.pexels.com/photos/1370292/pexels-photo-1370292.jpeg'
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Librería El Rincón de los Libros'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Card de información importante
            Card(
              elevation: 4,
              margin: const EdgeInsets.only(bottom: 16),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.campaign, color: Colors.deepPurple),
                        SizedBox(width: 8),
                        Text(
                          'Información Importante',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      '¡Tenemos grandes noticias! Pronto podrás comprar todos tus libros directamente desde nuestra aplicación. Mantente atento a nuestra próxima actualización.',
                      style: TextStyle(fontSize: 14),
                    ),
                  ],
                ),
              ),
            ),

            // Lista de libros
            const Text(
              'Nuestros Libros',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 16),
            
            // ListView de libros con imágenes
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: libros.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.only(bottom: 8),
                    child: ListTile(
                      leading: ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.network(
                          libros[index]['imagen']!,
                          width: 50,
                          height: 70,
                          fit: BoxFit.cover,
                          errorBuilder: (context, error, stackTrace) {
                            return Container(
                              width: 50,
                              height: 70,
                              color: Colors.grey[300],
                              child: const Icon(Icons.book, color: Colors.deepPurple),
                            );
                          },
                          loadingBuilder: (context, child, loadingProgress) {
                            if (loadingProgress == null) return child;
                            return Container(
                              width: 50,
                              height: 70,
                              color: Colors.grey[300],
                              child: const Center(
                                child: CircularProgressIndicator(color: Colors.deepPurple),
                              ),
                            );
                          },
                        ),
                      ),
                      title: Text(
                        libros[index]['titulo']!,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      subtitle: Text(libros[index]['autor']!),
                      trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                      onTap: () {
                        // Aquí puedes agregar la navegación a los detalles del libro
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text('Seleccionaste: ${libros[index]['titulo']}'),
                            backgroundColor: Colors.deepPurple,
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),
            
            // GridView de imágenes de libros
            const Text(
              'Galería de Libros',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 16),
            
            SizedBox(
              height: 250,
              child: GridView.count(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: List.generate(
                  9,
                  (index) => ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.3),
                            blurRadius: 4,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      child: Image.network(
                        libros[index]['imagen']!,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.primaries[index % Colors.primaries.length],
                            child: const Center(
                              child: Icon(Icons.book, color: Colors.white, size: 30),
                            ),
                          );
                        },
                        loadingBuilder: (context, child, loadingProgress) {
                          if (loadingProgress == null) return child;
                          return Container(
                            color: Colors.grey[300],
                            child: const Center(
                              child: CircularProgressIndicator(color: Colors.deepPurple),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 24),

            // Sección adicional de libros destacados
            const Text(
              'Libros Destacados',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 16),

            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: libros.length,
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    margin: const EdgeInsets.only(right: 12),
                    child: Column(
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              libros[index]['imagen']!,
                              width: double.infinity,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(
                                  color: Colors.primaries[index % Colors.primaries.length],
                                  child: const Center(
                                    child: Icon(Icons.book, color: Colors.white),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        const SizedBox(height: 8),
                        Text(
                          libros[index]['titulo']!,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}