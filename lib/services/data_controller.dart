import 'package:lesson7/models/whale.dart';
import 'package:lesson7/services/data_source.dart';

class DataController {
  DataController._();
  static final DataController _instance = DataController._();
  factory DataController() => _instance;

  List<Whale> _items = [];
  List<Whale> get items => _items;

  Future<void> initialize() async {
    final json = await DataSource.convertor();
    _items = json.map((item) => Whale.fromJson(item)).toList();
  }
}