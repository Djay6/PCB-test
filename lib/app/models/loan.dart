class LoanDetails {
  String? loanApplicationId;
  String? offerId;
  String? loanAppRefNo;
  String? repaymentPlanId;
  String? loanApplicationCode;
  String? currentApplicationStage;
  String? nextApplicationStage;
  String? gstin;
  String? createdDt;
  String? tradeNam;
  int? totalInvoice;
  String? buyerName;
  String? invoiceNumber;
  String? invoiceAmount;
  String? aaId;
  String? aaCode;

  LoanDetails(
      {this.loanApplicationId,
      this.offerId,
      this.loanAppRefNo,
      this.repaymentPlanId,
      this.loanApplicationCode,
      this.currentApplicationStage,
      this.nextApplicationStage,
      this.gstin,
      this.createdDt,
      this.tradeNam,
      this.totalInvoice,
      this.buyerName,
      this.invoiceNumber,
      this.invoiceAmount,
      this.aaId,
      this.aaCode});

  LoanDetails.fromJson(Map<String, dynamic> json) {
    loanApplicationId = json['loanApplicationId'];
    offerId = json['offerId'];
    loanAppRefNo = json['loanAppRefNo'];
    repaymentPlanId = json['repaymentPlanId'];
    loanApplicationCode = json['loanApplicationCode'];
    currentApplicationStage = json['currentApplicationStage'];
    nextApplicationStage = json['nextApplicationStage'];
    gstin = json['gstin'];
    createdDt = json['createdDt'];
    tradeNam = json['tradeNam'];
    totalInvoice = json['totalInvoice'];
    buyerName = json['buyerName'];
    invoiceNumber = json['invoiceNumber'];
    invoiceAmount = json['invoiceAmount'];
    aaId = json['aaId'];
    aaCode = json['aaCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['loanApplicationId'] = loanApplicationId;
    data['offerId'] = offerId;
    data['loanAppRefNo'] = loanAppRefNo;
    data['repaymentPlanId'] = repaymentPlanId;
    data['loanApplicationCode'] = loanApplicationCode;
    data['currentApplicationStage'] = currentApplicationStage;
    data['nextApplicationStage'] = nextApplicationStage;
    data['gstin'] = gstin;
    data['createdDt'] = createdDt;
    data['tradeNam'] = tradeNam;
    data['totalInvoice'] = totalInvoice;
    data['buyerName'] = buyerName;
    data['invoiceNumber'] = invoiceNumber;
    data['invoiceAmount'] = invoiceAmount;
    data['aaId'] = aaId;
    data['aaCode'] = aaCode;
    return data;
  }
}
