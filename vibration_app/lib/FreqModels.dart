import 'package:json_annotation/json_annotation.dart';

part 'FreqModels.g.dart';

@JsonSerializable()
class FrequencyDataSensorValue {
  int SensorId = 0;
  DateTime Date = DateTime.now();
  List<FrequencyDataSensorValuePoint> SensorsFrequencyDataPoints = List.empty(growable: true);

  FrequencyDataSensorValue(this.SensorId, this.Date ,this.SensorsFrequencyDataPoints);

  Map<String, dynamic> toJson() =>  _$FrequencyDataSensorValueToJson(this);  
  factory FrequencyDataSensorValue.fromJson(Map<String,dynamic> json) => _$FrequencyDataSensorValueFromJson(json);
}
@JsonSerializable()
class FrequencyDataSensorValuePoint {
  double Frequency = 0;
  double Power = 0;

  FrequencyDataSensorValuePoint(this.Frequency, this.Power);
  
  factory FrequencyDataSensorValuePoint.fromJson(Map<String,dynamic> json) => _$FrequencyDataSensorValuePointFromJson(json);
  Map<String, dynamic> toJson() =>  _$FrequencyDataSensorValuePointToJson(this);
}
