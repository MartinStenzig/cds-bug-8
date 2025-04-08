using {API_MAINTENANCEORDER as sync} from './external/API_MAINTENANCEORDER';
using from './external/MAINTENANCEORDEREVENTS';

extend service sync with {


// Represent the event fired by creating a work order
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPlanning.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPlanning.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

// Represent the event fired when releasing a work order
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPreparation.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPreparation.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

// Represent the event fired when setting a work order to TECO
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToTechCompleted.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToTechCompleted.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

// Represent the event fired when setting a work order to CLSD
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Closed.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Closed.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

}
