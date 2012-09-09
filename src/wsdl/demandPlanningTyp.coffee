simpleTypes = module.exports =
  DemandPlanCalendarType:
    base: 'xsd:string'
    values: ["_daily","_monthly","_weekly"]
  DemandPlanMonth:
    base: 'xsd:string'
    values: ["_april","_august","_december","_february","_january","_july","_june","_march","_may","_november","_october","_september"]
  DayOfTheWeek:
    base: 'xsd:string'
    values: ["_sunday","_monday","_tuesday","_wednesday","_thursday","_friday","_saturday"]
  ItemDemandPlanProjectionMethod:
    base: 'xsd:string'
    values: ["_linearRegression","_movingAverage","_salesForecast","_seasonalAverage"]
  ItemSupplyPlanOrderType:
    base: 'xsd:string'
    values: ["_purchaseOrder","_workOrder"]
