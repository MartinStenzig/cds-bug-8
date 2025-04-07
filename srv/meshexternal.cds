using {API_MAINTENANCEORDER as sync} from './external/API_MAINTENANCEORDER';
using from './external/MAINTENANCEORDEREVENTS';

extend service sync with {

    @topic: 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Approved.v1'
    event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Approved.v1 {
        MaintenanceOrder     : LargeString;
        MaintenanceOrderType : LargeString;
    };

}
