
class CatelogModel{
   static final items= [
     Item(
      name : "pramod Vyash",
      desc : "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
      price : "* * * *",
      image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
    ),
     Item(
       name : "Niraj Vyash",
       desc : "Lorem ipsum dolor sit amet, consectetuer adipiscing elit.",
       price : "* * * *",
       image : "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
     ),
     Item(
       name : "Pramod vishwakarma",
       desc :  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRISJ6msIu4AU9_M9ZnJVQVFmfuhfyJjEtbUm3ZK11_8IV9TV25-1uM5wHjiFNwKy99w0mR5Hk&usqp=CAc",
       price :"* * * *",
       image : 'assets/pramod987.jpeg',
     ),
   ];
}

class Item{

  final String name;
  final String desc;
  final String price;
  final String image;

  Item(   {   required this.name, required this.desc, required this.price, required this.image});
}


