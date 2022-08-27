class ServiceData {
  final String serviceName, iconPath;

  ServiceData({
    required this.iconPath,
    required this.serviceName,
  });
}

List demoServiceData = [
  ServiceData(
    iconPath: 'assets/vectors/icone-pix.svg',
    serviceName: 'Área Pix',
  ),
  ServiceData(
    iconPath: 'assets/vectors/codebar.svg',
    serviceName: 'Pagar',
  ),
  ServiceData(
    iconPath: 'assets/vectors/money-transfer.svg',
    serviceName: 'Tranferir',
  ),
  ServiceData(
    iconPath: 'assets/vectors/money-deposit.svg',
    serviceName: 'Depositar',
  ),
  ServiceData(
    iconPath: 'assets/vectors/smartphone.svg',
    serviceName: 'Recarga de celular',
  ),
  ServiceData(
    iconPath: 'assets/vectors/money-cobrar.svg',
    serviceName: 'Cobrar',
  ),
  ServiceData(
    iconPath: 'assets/vectors/heart.svg',
    serviceName: 'Doação',
  ),
  ServiceData(
    iconPath: 'assets/vectors/international.svg',
    serviceName: 'Transferir Internacional',
  ),
  ServiceData(
    iconPath: 'assets/vectors/stocks.svg',
    serviceName: 'Investir',
  ),
];
