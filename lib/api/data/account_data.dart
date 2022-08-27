class AccountData {
  AccountData({
    required this.image,
    required this.name,
    required this.agency,
    required this.account,
    required this.bank,
  });

  final String image, name, agency, account, bank;
}

List demoAccountData = [
  AccountData(
    image: 'assets/images/prof-img.jpg',
    name: 'Gabriel',
    agency: 'xxxxx',
    account: 'xxxxxx-x',
    bank: 'xxxxx',
  )
];
