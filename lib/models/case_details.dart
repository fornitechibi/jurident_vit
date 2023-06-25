class CaseDetails {
  final String caseType;
  final String caseNumber;
  final String name;
  final DateTime date;
  final String courtName;
  final DateTime nextHearingDate;
  final String partyContactNumber;
  final String adversePartyName;
  final String adversePartyContactNumber1;
  final String adversePartyLawyerName;
  final String adversePartyContactNumber2;

  CaseDetails({
    required this.caseType,
    required this.caseNumber,
    required this.name,
    required this.date,
    required this.courtName,
    required this.nextHearingDate,
    required this.partyContactNumber,
    required this.adversePartyName,
    required this.adversePartyContactNumber1,
    required this.adversePartyLawyerName,
    required this.adversePartyContactNumber2,
  });
}
