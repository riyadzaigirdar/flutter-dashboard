
class TabValue {
  final String tabName;
  final String tabValue;

  TabValue({
    required this.tabName, 
    required this.tabValue
  });
}

List<TabValue> getTabValues(){
  return [
    TabValue(
      tabName: "Total Bookings", 
      tabValue: "28,345"
    ),
    TabValue(
      tabName: "Pending Approval", 
      tabValue: "180"
    ),
    TabValue(
      tabName: "New Clients This Month", 
      tabValue: "810"
    ),
    TabValue(
      tabName: "Returning Clients", 
      tabValue: "20%"
    )
  ];
}