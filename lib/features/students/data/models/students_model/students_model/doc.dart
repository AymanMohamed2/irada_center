import 'package:equatable/equatable.dart';

class Doc extends Equatable {
	final String? id;
	final String? name;
	final String? studentId;
	final int? age;
	final String? phoneNumber;
	final String? parentPhoneNumber;
	final String? grad;
	final List<dynamic>? groups;
	final List<dynamic>? transactions;

	const Doc({
		this.id, 
		this.name, 
		this.studentId, 
		this.age, 
		this.phoneNumber, 
		this.parentPhoneNumber, 
		this.grad, 
		this.groups, 
		this.transactions, 
	});

	factory Doc.fromJson(Map<String, dynamic> json) => Doc(
				id: json['_id'] as String?,
				name: json['name'] as String?,
				studentId: json['studentId'] as String?,
				age: json['age'] as int?,
				phoneNumber: json['phoneNumber'] as String?,
				parentPhoneNumber: json['parentPhoneNumber'] as String?,
				grad: json['grad'] as String?,
				groups: json['groups'] as List<dynamic>?,
				transactions: json['transactions'] as List<dynamic>?,
			);

	Map<String, dynamic> toJson() => {
				'_id': id,
				'name': name,
				'studentId': studentId,
				'age': age,
				'phoneNumber': phoneNumber,
				'parentPhoneNumber': parentPhoneNumber,
				'grad': grad,
				'groups': groups,
				'transactions': transactions,
			};

	@override
	List<Object?> get props {
		return [
				id,
				name,
				studentId,
				age,
				phoneNumber,
				parentPhoneNumber,
				grad,
				groups,
				transactions,
		];
	}
}
