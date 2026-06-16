-- 1. Inserção de dados na tabela Location
INSERT INTO Location VALUES (1, 'South Africa');
INSERT INTO Location VALUES (2, 'Argentina');
INSERT INTO Location VALUES (3, 'USA');
INSERT INTO Location VALUES (4, 'Mongolia');
INSERT INTO Location VALUES (5, 'Egypt');
INSERT INTO Location VALUES (6, 'Niger');
INSERT INTO Location VALUES (7, 'China');
INSERT INTO Location VALUES (8, 'Canada');
INSERT INTO Location VALUES (9, 'France');
INSERT INTO Location VALUES (10, 'Uruguay');

-- 2. Inserção de dados na tabela Period
INSERT INTO Period VALUES (1, 'Early Jurassic', 199, 189);
INSERT INTO Period VALUES (2, 'Late Cretaceous', 74, 70);
INSERT INTO Period VALUES (3, 'Late Cretaceous', 83, 70);
INSERT INTO Period VALUES (4, 'Late Cretaceous', 99, 84);
INSERT INTO Period VALUES (5, 'Early Cretaceous', 115, 105);
INSERT INTO Period VALUES (6, 'Late Cretaceous', 98, 93);
INSERT INTO Period VALUES (7, 'Early Cretaceous', 132, 121);
INSERT INTO Period VALUES (8, 'Late Jurassic', 169, 159);
INSERT INTO Period VALUES (9, 'Late Cretaceous', 70, 65);
INSERT INTO Period VALUES (10, 'Late Cretaceous', 80, 75);

-- 3. Inserção de dados na tabela Taxonomy
INSERT INTO Taxonomy VALUES (1, 'Dinosauria Saurischia Sauropodomorpha Prosauropoda Anchisauria', 'Yates Bonnan Neveling Chinsamy and Blackbeard 2010 (2009)');
INSERT INTO Taxonomy VALUES (2, 'Dinosauria Saurischia Theropoda Neotheropoda Ceratosauria Neoceratosauria Abelisauridae Abelisaurinae', 'Bonaparte and Novas (1985)');
INSERT INTO Taxonomy VALUES (3, 'Dinosauria Ornithischia Genasauria Cerapoda Marginocephalia Ceratopsia Neoceratopsia Coronosauria Ceratopsidae Centrosaurinae', 'Sampson (1995)');
INSERT INTO Taxonomy VALUES (4, 'Dinosauria Saurischia Theropoda Neotheropoda Tetanurae Avetheropoda Coelurosauria Tyrannoraptora Maniraptoriformes Maniraptora Paraves Eumaniraptora Dromaeosauridae', 'Perle Norell and Clark (1999)');
INSERT INTO Taxonomy VALUES (5, 'Dinosauria Saurischia Theropoda Neotheropoda Tetanurae Avetheropoda Carnosauria Allosauroidea Carcharodontosauridae', 'Stovall and Langston (1950)');
INSERT INTO Taxonomy VALUES (6, 'Dinosauria Saurischia Sauropodomorpha Sauropoda Eusauropoda Neosauropoda Macronaria Camarasauromorpha Titanosauriformes Titanosauria', 'Stromer (1932)');
INSERT INTO Taxonomy VALUES (7, 'Dinosauria Saurischia Theropoda Neotheropoda Tetanurae Spinosauroidea Megalosauridae Eustreptospondylinae', 'Sereno Wilson Larsson Dutheil and Sues (1944)');
INSERT INTO Taxonomy VALUES (8, 'Dinosauria Ornithischia Genasauria Cerapoda Ornithopoda Euornithopoda', 'Peng (1990)');
INSERT INTO Taxonomy VALUES (9, 'Dinosauria Saurischia Sauropodomorpha Sauropoda Eusauropoda Neosauropoda Macronaria Camarasauromorpha Titanosauriformes Titanosauria Lithostrotia', 'Gilmore (1922)');
INSERT INTO Taxonomy VALUES (10, 'Dinosauria Ornithischia', 'Ryan 2007');

-- 4. Inserção de dados na tabela Type
INSERT INTO Type VALUES (1, 'sauropod'); 
INSERT INTO Type VALUES (2, 'large theropod'); 
INSERT INTO Type VALUES (3, 'ceratopsian'); 
INSERT INTO Type VALUES (4, 'euornithopod'); 
INSERT INTO Type VALUES (5, 'small theropod'); 
INSERT INTO Type VALUES (6, 'armoured dinosaur'); 

-- 5. Inserção de dados na tabela Dinosaur (Tabela Principal)
INSERT INTO Dinosaur VALUES (1, 'aardonyx', 'herbivorous', 1, 1, 8.0, 1, 1, 'celestae', 'Jurassic Spark');
INSERT INTO Dinosaur VALUES (2, 'abelisaurus','carnivorous', 2, 2, 9.0, 2, 2, 'comahuensis', 'Cretaceous Creatures');
INSERT INTO Dinosaur VALUES (3, 'achelousaurus','herbivorous', 3, 3, 6.0, 3, 3, 'horneri', 'Cretaceous Creatures and Age Old America');
INSERT INTO Dinosaur VALUES (4, 'achillobator', 'carnivorous', 2, 4, 5.0, 4, 4, 'giganteus', 'Cretaceous Creatures');
INSERT INTO Dinosaur VALUES (5, 'acrocanthosaurus','carnivorous', 2, 5, 12.0, 5, 3, 'atokensis', 'Cretaceous Creatures, GIANTS and Age Old America');
INSERT INTO Dinosaur VALUES (6, 'aegyptosaurus','herbivorous', 1, 6, 15.0, 6, 5, 'baharijensis', 'Cretaceous Creatures and GIANTS');
INSERT INTO Dinosaur VALUES (7, 'afrovenator','carnivorous', 2, 7, 9.0, 7, 6, 'abakensis', 'Cretaceous Creatures');
INSERT INTO Dinosaur VALUES (8, 'agilisaurus','herbivorous', 4, 8, 1.5, 8, 7, 'louderbacki', 'Jurassic Spark and Dinosaurs of China');
INSERT INTO Dinosaur VALUES (9, 'alamosaurus', 'herbivorous', 1, 9, 9.0, 9, 3, 'sanjuanensis', 'Cretaceous Creatures, GIANTS and Age Old America');
INSERT INTO Dinosaur VALUES (10, 'albertaceratops', 'herbivorous', 3, 10, 1.5, 10, 3, 'nesmoi', 'Cretaceous Creatures and Age Old America');

-- 6. Manipulação e Atualização de dados (Task 2)
ALTER TABLE Period ADD COLUMN existence_period INT;
UPDATE Period SET existence_period = period_start - period_end;

ALTER TABLE Dinosaur ADD COLUMN new_exhibition VARCHAR(100);
UPDATE Dinosaur SET new_exhibition = 'Great Grazers' WHERE diet = 'herbivorous';
