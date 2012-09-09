simpleTypes = module.exports =
  EmployeePayFrequency:
    base: 'xsd:string'
    values: ["_annually","_custom","_daily","_endOfPeriod","_everyFourWeeks","_everyThreeYears","_everyTwoMonths","_everyTwoWeeks","_everyTwoYears","_monthly","_never","_oneTime","_quarterly","_startOfPeriod","_twiceAMonth","_twiceAYear","_weekly"]
  EmployeeUseTimeData:
    base: 'xsd:string'
    values: ["_wage","_salary"]
  EmployeeCommissionPaymentPreference:
    base: 'xsd:string'
    values: ["_accountsPayable","_payroll","_systemPreference"]
  Gender:
    base: 'xsd:string'
    values: ["_omitted","_female","_male"]
  EmployeeAccruedTimeAccrualMethod:
    base: 'xsd:string'
    values: ["_lumpSums","_perHourWorked","_perPayPeriod"]
  EmployeeDirectDepositAccountStatus:
    base: 'xsd:string'
    values: ["_active","_pending","_verifying","_failed","_inactive"]
  PayrollItemItemTypeNoHierarchy:
    base: 'xsd:string'
    values: ["_addition","_commission","_deduction","_directDeposit","_disability","_earning","_employerContribution","_expense","_federal","_medicare","_other","_salary","_sick","_socialSecurity","_state","_tax","_unemployment","_vacation","_wage"]
