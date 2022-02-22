import 'package:json_annotation/json_annotation.dart';
@JsonSerializable()
class CoinAlbum {
  final String name;
  final String asset_id;
  final double  price_usd;
  final double volume_1hrs_usd;
  final double volume_1day_usd;
  final   volume_1mnth_usd;


  const CoinAlbum({
    required this.name,
    required this.asset_id,
    required this.price_usd,
    required this.volume_1hrs_usd,
    required this.volume_1day_usd,
    required this.volume_1mnth_usd,
  });

  factory CoinAlbum.fromJson(Map<dynamic, dynamic> json) {
    return CoinAlbum(
      name: json['name'] ?? "Empty",
      asset_id: json['asset_id'] ?? "EMP",
      price_usd: json['price_usd'] ?? 0,
      volume_1hrs_usd: json['volume_1hrs_usd'],
      volume_1day_usd: json['volume_1day_usd'],
      volume_1mnth_usd: json['volume_1mnth_usd'],
    );
  }
}

