import 'package:equatable/equatable.dart';

import 'data.dart';

class StudentsModel extends Equatable {
	final String? status;
	final int? filteredResults;
	final Data? data;

	const StudentsModel({this.status, this.filteredResults, this.data});

	factory StudentsModel.fromJson(Map<String, dynamic> json) => StudentsModel(
				status: json['status'] as String?,
				filteredResults: json['filteredResults'] as int?,
				data: json['data'] == null
						? null
						: Data.fromJson(json['data'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'status': status,
				'filteredResults': filteredResults,
				'data': data?.toJson(),
			};

	@override
	List<Object?> get props => [status, filteredResults, data];
}
