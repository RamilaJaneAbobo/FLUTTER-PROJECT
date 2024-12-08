import 'package:flutter/material.dart';

void main() {
  runApp(PaintingApp());
}

class PaintingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Painting Info App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Color.fromARGB(255, 116, 183, 187),
        textTheme: TextTheme(
          bodyText1: TextStyle(fontFamily: 'Times New Roman'),
          bodyText2: TextStyle(fontFamily: 'Times New Roman'),
        ),
      ),
      home: PaintingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaintingScreen extends StatefulWidget {
  @override
  _PaintingScreenState createState() => _PaintingScreenState();
}

class _PaintingScreenState extends State<PaintingScreen>
    with SingleTickerProviderStateMixin {
  final List<Map<String, String>> allPaintings = [
     {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/6/6a/Mona_Lisa.jpg',
      'title': 'MONA LISA',
      'info': '''
The Mona Lisa digitally retouched to reduce the effects of ageing; the original painting has darkened over time.

Artist: Leonardo da Vinci
Year: c. 1503–1506, perhaps continuing until c. 1517
Medium: Oil on poplar panel
Subject: Lisa del Giocondo
Dimensions: 77 cm × 53 cm (30 in × 21 in)
Location: Louvre, Paris

The painting presents a woman in half-body portrait, which has as a backdrop a distant landscape. Yet this simple description of a seemingly standard composition gives little sense of Leonardo’s achievement. The three-quarter view, in which the sitter’s position mostly turns toward the viewer, broke from the standard profile pose used in Italian art and quickly became the convention for all portraits, one used well into the 21st century. The subject’s softly sculptural face shows Leonardo’s skillful handling of sfumato (use of fine shading) and reveals his understanding of the musculature and the skull beneath the skin. The delicately painted veil, the finely wrought tresses, and the careful rendering of folded fabric demonstrate Leonardo’s studied observations and inexhaustible patience. Moreover, the sensuous curves of the sitter’s hair and clothing are echoed in the shapes of the valleys and rivers behind her. The sense of overall harmony achieved in the painting—especially apparent in the sitter’s faint smile—reflects Leonardo’s idea of the cosmic link connecting humanity and nature, making this painting an enduring record of Leonardo’s vision. In its exquisite synthesis of sitter and landscape, the Mona Lisa set the standard for all future portraits.
      '''
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/f/f4/The_Scream.jpg',
      'title': 'THE SCREAM',
      'info': '''
The Scream is one of the most iconic artworks of modern art, created by Edvard Munch.

Artist: Edvard Munch
Year: 1893
Medium: Oil, tempera, pastel, and crayon on cardboard
Dimensions: 91 cm × 73.5 cm (36 in × 28.9 in)
Location: National Gallery and Munch Museum, Oslo, Norway

The Scream is a composition created by Norwegian artist Edvard Munch in 1893. The Norwegian name of the piece is Skrik (Scream), and the German title under which it was first exhibited is Der Schrei der Natur (The Scream of Nature). The agonized face in the painting has become one of the most iconic images in art, seen as symbolizing the anxiety of the human condition. Munch's work, including The Scream, had a formative influence on the Expressionist movement.[1]
      '''
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/0/01/Vincent_van_Gogh_-_Starry_Night_-_Google_Art_Project.jpg',
      'title': 'THE STARRY NIGHT',
      'info': '''
The Starry Night is a world-famous painting by the Dutch artist Vincent van Gogh, depicting the view from the east-facing window of his asylum room.

Artist: Vincent van Gogh
Year: 1889
Medium: Oil on canvas
Dimensions: 73.7 cm × 92.1 cm (29 in × 36.2 in)
Location: Museum of Modern Art, New York City

The Starry Night is an oil-on-canvas painting by the Dutch Post-Impressionist painter Vincent van Gogh, painted in June 1889. It depicts the view from the east-facing window of his asylum room at Saint-Rémy-de-Provence, just before sunrise, with the addition of an imaginary village. It has been in the permanent collection of the Museum of Modern Art in New York City since 1941,[4] acquired through the Lillie P. Bliss Bequest. Widely regarded as Van Gogh's magnum opus, The Starry Night is one of the most recognizable paintings in Western art.
      '''
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/6/66/Johannes_Vermeer_%281632-1675%29_-_The_Girl_With_The_Pearl_Earring_%281665%29.jpg',
      'title': 'GIRL WITH A PEARL EARRING',
      'info': '''
The painting is a tronie, the Dutch 17th-century description of a "head" that was not meant to be a portrait. It depicts a European girl wearing "exotic dress", an "oriental turban", and what appears to be a very large pearl as an earring.

Artist	Johannes Vermeer
Year	c. 1665
Type	Tronie
Medium	Oil on canvas
Movement	Dutch Golden Age painting
Dimensions	44.5 cm × 39 cm (17.5 in × 15 in)
Location	Mauritshuis, The Hague, Netherlands

Girl with a Pearl Earring represents a young woman in a dark shallow space, an intimate setting that draws the viewer’s attention exclusively on her. She wears a blue and gold turban, the titular pearl earring, and a gold jacket with a visible white collar beneath. Unlike many of Vermeer’s subjects, she is not concentrating on a daily chore and unaware of her viewer. Instead, caught in a fleeting moment, she turns her head over her shoulder, meeting the viewer’s gaze with her eyes wide and lips parted as if about to speak. Her enigmatic expression coupled with the mystery of her identity has led some to compare her to the equivocal subject in Leonardo da Vinci’s Mona Lisa (c. 1503–19). Unlike the Mona Lisa, however, Girl with a Pearl Earring is not a portrait but a tronie, a Dutch term for a character or type of person. A young woman might have sat for Vermeer, but the painting is not meant to portray her or any specific individual in the same way that Leonardo’s piece portrayed an existing person (likely Lisa Gherardini, the wife of a Florentine merchant).
      '''
    },
    {
      'image': 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Klimt_-_Der_Kuss.jpeg',
      'title': 'THE KISS',
      'info': '''
Love, intimacy, and sexuality are common themes found in Gustav Klimt's works.

Artist	Gustav Klimt
Year	1907–1908[1]
Medium	Oil and gold leaf on canvas[2]
Dimensions	180 cm × 180 cm (71 in × 71 in)
Location	Österreichische Galerie Belvedere, Vienna, Austria

“The Kiss”, probably the most popular work by Gustav Klimt, was first exhibited in 1908 at the Kunstschau art exhibition on the site of today’s Konzerthaus. The Ministry bought it from there for the sum of 25,000 Kronen and thus secured for the state one of the icons of Viennese Jugendstil and indeed of European modern art. It undoubtedly represents the culmination of the phase known as the “Golden Epoch”.
      '''
    },
  ];
  List<Map<String, String>> filteredPaintings = [];
  int _currentIndex = 0;

  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  @override
  void initState() {
    super.initState();
    filteredPaintings = allPaintings;

    _controller = AnimationController(
      duration: Duration(milliseconds: 500),
      vsync: this,
    );

    _opacityAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _controller.forward();
  }

  void _filterPaintings(String query) {
    setState(() {
      filteredPaintings = query.isEmpty
          ? allPaintings
          : allPaintings
              .where((painting) =>
                  painting['title']!.toLowerCase().contains(query.toLowerCase()))
              .toList();
      _currentIndex = 0;
      _controller.reset();
      _controller.forward();
    });
  }

  void _nextImage() {
    setState(() {
      _currentIndex = (_currentIndex + 1) % filteredPaintings.length;
      _controller.reset();
      _controller.forward();
    });
  }

  void _previousImage() {
    setState(() {
      _currentIndex = (_currentIndex - 1 + filteredPaintings.length) %
          filteredPaintings.length;
      _controller.reset();
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Expanded(
              flex: 3,
              child: Container(
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search, color: Colors.grey),
                    border: InputBorder.none,
                  ),
                  onChanged: _filterPaintings,
                ),
              ),
            ),
          ],
        ),
      ),
      body: filteredPaintings.isNotEmpty
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    FadeTransition(
                      opacity: _opacityAnimation,
                      child: Container(
                        height: 400,
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(horizontal: 40),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(color: Colors.black, width: 4),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            filteredPaintings[_currentIndex]['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 10,
                      top: 130,
                      child: IconButton(
                        icon: Icon(Icons.arrow_back, size: 32),
                        onPressed: _previousImage,
                      ),
                    ),
                    Positioned(
                      right: 10,
                      top: 130,
                      child: IconButton(
                        icon: Icon(Icons.arrow_forward, size: 32),
                        onPressed: _nextImage,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(
                        pageBuilder: (_, __, ___) => InfoScreen(
                          title: filteredPaintings[_currentIndex]['title']!,
                          image: filteredPaintings[_currentIndex]['image']!,
                          info: filteredPaintings[_currentIndex]['info']!,
                        ),
                        transitionsBuilder: (_, anim, __, child) =>
                            FadeTransition(opacity: anim, child: child),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  ),
                  child: Text(
                    filteredPaintings[_currentIndex]['title']!,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            )
          : Center(
              child: Text(
                'No results found',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class InfoScreen extends StatelessWidget {
  final String title;
  final String image;
  final String info;

  InfoScreen({required this.title, required this.image, required this.info});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            AnimatedContainer(
              duration: Duration(milliseconds: 500),
              curve: Curves.easeInOut,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black, width: 4),
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  image,
                  height: 500,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                info,
                style: TextStyle(fontSize: 16, height: 1.5),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
