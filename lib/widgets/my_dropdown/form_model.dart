class ReportResponse {
  String guard; 
  ReportResponse({
    required this.guard, 
  });

  factory ReportResponse.fromJson(Map<String, dynamic> json) {
    return ReportResponse(
      guard: json['guardia'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'guardia': guard,
    };
  }
}
