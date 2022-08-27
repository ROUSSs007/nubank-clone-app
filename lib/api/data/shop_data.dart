class ShopData {
  ShopData({
    required this.image,
    required this.partnerName,
    required this.shortDescription,
    required this.promoEmphasis,
  });

  final String image, partnerName, shortDescription, promoEmphasis;
}

List demoShopData = [
  ShopData(
    image: 'assets/images/shopee-logo.png',
    partnerName: 'Shopee',
    shortDescription: 'Cashback válido para toda a loja',
    promoEmphasis: '2% de\ncashback',
  ),
  ShopData(
    image: 'assets/images/casas-bahia.png',
    partnerName: 'Casas Bahia',
    shortDescription: 'Em produtos selecionados.',
    promoEmphasis: 'Até\n25% OFF',
  ),
  ShopData(
    image: 'assets/images/magalu.png',
    partnerName: 'Magazine Luiza',
    shortDescription: 'Em produtos selecionados.',
    promoEmphasis: 'Até\n10% OFF',
  ),
  ShopData(
    image: 'assets/images/ifood.png',
    partnerName: 'iFood',
    shortDescription: 'Cupom Clube iFood 30% off (até R\$10)',
    promoEmphasis: 'A partir de\nR\$ 0,99',
  ),
  ShopData(
    image: 'assets/images/evino.png',
    partnerName: 'Evino',
    shortDescription: 'Promoção dentro da loja.',
    promoEmphasis: 'Até\n20% OFF',
  ),
];
