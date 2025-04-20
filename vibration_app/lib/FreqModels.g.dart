// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FreqModels.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrequencyDataSensorValue _$FrequencyDataSensorValueFromJson(
  Map<String, dynamic> json,
) => FrequencyDataSensorValue(
  (json['SensorId'] as num).toInt(),
  DateTime.parse(json['Date'] as String),
  (json['SensorsFrequencyDataItems'] as List<dynamic>)
      .map(
        (e) =>
            FrequencyDataSensorValuePoint.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$FrequencyDataSensorValueToJson(
  FrequencyDataSensorValue instance,
) => <String, dynamic>{
  'SensorId': instance.SensorId,
  'Date': instance.Date.toIso8601String(),
  'SensorsFrequencyDataItems': instance.SensorsFrequencyDataPoints,
};

FrequencyDataSensorValuePoint _$FrequencyDataSensorValuePointFromJson(
  Map<String, dynamic> json,
) => FrequencyDataSensorValuePoint(
  (json['Frequency'] as num).toDouble(),
  (json['Power'] as num).toDouble(),
);

Map<String, dynamic> _$FrequencyDataSensorValuePointToJson(
  FrequencyDataSensorValuePoint instance,
) => <String, dynamic>{
  'Frequency': instance.Frequency,
  'Power': instance.Power,
};
