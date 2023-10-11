import 'package:equatable/equatable.dart';

import 'doc.dart';

class Data extends Equatable {
	final List<Doc>? doc;

	const Data({this.doc});

	factory Data.fromJson(Map<String, dynamic> json) => Data(
				doc: (json['doc'] as List<dynamic>?)
						?.map((e) => Doc.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'doc': doc?.map((e) => e.toJson()).toList(),
			};

	@override
	List<Object?> get props => [doc];
}
