// Dart OOP Assignment: Kigali Bus Card
// Student: Ishimwe Christian Shema
// Student ID: 26243

class BusCard {
  String _owner = '';
  int _balance = 0;

  // Constructor
  BusCard(String owner, int balance) {
    _owner = owner;
    _balance = balance;
  }

  // Getter for owner
  String get owner {
    return _owner;
  }

  // TODO 1: Getter for balance
  int get balance {
    return _balance;
  }

  // Setter for owner
  set owner(String newName) {
    if (newName.length < 3) {
      print('Error: name too short');
    } else {
      _owner = newName;
    }
  }

  // Show card information
  void showInfo() {
    print('Owner: $_owner | Balance: $_balance RWF');
  }

  // TODO 2: Top up the card
  void topUp(int amount) {
    if (amount < 500 || amount > 50000) {
      print('Error: top-up must be 500 to 50000 RWF');
    } else {
      _balance = _balance + amount;
      print('Topped up $amount RWF');
    }
  }

  // TODO 3: Pay the bus fare
  void pay(int fare) {
    if (fare > _balance) {
      print('Card declined');
    } else {
      _balance = _balance - fare;
      print('Paid $fare RWF');
    }
  }
}

// Part 2: StudentCard uses inheritance
class StudentCard extends BusCard {
  int _discount = 0;

  StudentCard(String owner, int balance, int discount)
      : super(owner, balance) {
    _discount = discount;
  }

  @override
  void showInfo() {
    super.showInfo();
    print('Student card: $_discount% off');
  }

  // TODO 4: Override pay
  @override
  void pay(int fare) {
    int off = fare * _discount ~/ 100;
    print('Student discount: $off RWF');
    super.pay(fare - off);
  }
}

// Part 3: Main function
void main() {
  // My numbers: D = 43, L = 3
  // Starting balance = 1430 RWF
  // Bus fare = 243 RWF
  // Student discount = 13%

  print('--- BUS CARD ---');

  // Create a card using my starting balance
  BusCard card = BusCard('Ama', 1430);
  card.owner = 'Al';
  card.showInfo();

  // TODO 5: Change owner to my full name
  card.owner = 'Ishimwe Christian Shema';
  card.showInfo();

  // TODO 6: Test top up
  card.topUp(100);
  card.topUp(2000);

  // TODO 7: Pay bus fare two times
  card.pay(243);
  card.pay(243);
  card.showInfo();

  print('--- STUDENT CARD ---');

  // TODO 8: Create a student card
  StudentCard studentCard =
      StudentCard('Ishimwe Christian Shema', 1430, 13);

  // TODO 9: Pay bus fare with student card
  studentCard.pay(243);
  studentCard.showInfo();
}
