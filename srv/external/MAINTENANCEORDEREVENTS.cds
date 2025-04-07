/* checksum : 77b052684c0f4d841470a1255131c709 */
@cds.external : 'true'
@AsyncAPI.Extensions : { ![sap-catalog-spec-version]: '1.0', ![sap-api-type]: 'EVENT' }
@AsyncAPI.ShortText : 'Informs a remote system about closed, approved, and rejected events for maintenance orders in an SAP S/4HANA Cloud tenant.'
@AsyncAPI.StateInfo : { state: 'ACTIVE' }
@AsyncAPI.Title : 'Maintenance Order Events'
@AsyncAPI.SchemaVersion : '1.0.0'
@AsyncAPI.Description : ```
Maintenance orders describe in detail the maintenance tasks that are to be performed on a technical object and provide all the information needed to plan and execute maintenance work. \r
\r
The following events are available for maintenance order: \r
* Approved\r
* Closed\r
* Rejected\r
* Set to Ready for execution\r
* Set to deletion flagged\r
* Set to in planning\r
* Set to in preparation\r
* Set To Work Not Performed\r
* Set To Maintenance Work Completed\r
* Set To Work Started\r
* Set to Ready to schedule\r
* Set to technical completed\r
* Set to Work done\r
* Submitted for approval\r
* Order Phase Control Activated\r
* Order Phase Control Deactivated\r
* Operation Phase Control Activated\r
* Operation Phase Control Deactivated
```
service sap.s4.beh.maintenanceorder.v1.MaintenanceOrder {};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Approved.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Approved.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Closed.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Closed.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OpPhseCtrlActvtd.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OpPhseCtrlActvtd.v1 {
  EAMProcessPhaseCodeDesc : LargeString;
  EAMProcessSubPhaseCodeDesc : LargeString;
  MaintenanceOrder : LargeString;
  MaintenanceOrderOperation : LargeString;
  MaintenanceOrderSubOperation : LargeString;
  MaintenancePhaseControl : LargeString;
  MaintenancePhaseControlText : LargeString;
  MaintObjPhaseControlStateDesc : LargeString;
  MaintObjPhaseCtrlCodeResetBy : LargeString;
  MaintObjPhaseCtrlCodeSetBy : LargeString;
  MaintObjPhseCtrlCodeRsetDteTme : Timestamp;
  MaintObjPhseCtrlCodeSetDteTime : Timestamp;
  MaintOrdProcessPhaseCode : LargeString;
  MaintOrdProcessSubPhaseCode : LargeString;
  MaintProcgPhseCtrlActvtnCode : LargeString;
  MaintProcgPhseCtrlActvtnDesc : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OpPhseCtrlDactvtd.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OpPhseCtrlDactvtd.v1 {
  EAMProcessPhaseCodeDesc : LargeString;
  EAMProcessSubPhaseCodeDesc : LargeString;
  MaintenanceOrder : LargeString;
  MaintenanceOrderOperation : LargeString;
  MaintenanceOrderSubOperation : LargeString;
  MaintenancePhaseControl : LargeString;
  MaintenancePhaseControlText : LargeString;
  MaintObjPhaseControlStateDesc : LargeString;
  MaintObjPhaseCtrlCodeResetBy : LargeString;
  MaintObjPhaseCtrlCodeSetBy : LargeString;
  MaintObjPhseCtrlCodeRsetDteTme : Timestamp;
  MaintObjPhseCtrlCodeSetDteTime : Timestamp;
  MaintOrdProcessPhaseCode : LargeString;
  MaintOrdProcessSubPhaseCode : LargeString;
  MaintProcgPhseCtrlActvtnCode : LargeString;
  MaintProcgPhseCtrlActvtnDesc : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OrdPhseCtrlActvtd.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OrdPhseCtrlActvtd.v1 {
  EAMProcessPhaseCodeDesc : LargeString;
  EAMProcessSubPhaseCodeDesc : LargeString;
  MaintenanceOrder : LargeString;
  MaintenancePhaseControl : LargeString;
  MaintenancePhaseControlText : LargeString;
  MaintObjPhaseControlStateDesc : LargeString;
  MaintObjPhaseCtrlCodeResetBy : LargeString;
  MaintObjPhaseCtrlCodeSetBy : LargeString;
  MaintObjPhseCtrlCodeRsetDteTme : Timestamp;
  MaintObjPhseCtrlCodeSetDteTime : Timestamp;
  MaintOrdProcessPhaseCode : LargeString;
  MaintOrdProcessSubPhaseCode : LargeString;
  MaintProcgPhseCtrlActvtnCode : LargeString;
  MaintProcgPhseCtrlActvtnDesc : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OrdPhseCtrlDactvtd.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.OrdPhseCtrlDactvtd.v1 {
  EAMProcessPhaseCodeDesc : LargeString;
  EAMProcessSubPhaseCodeDesc : LargeString;
  MaintenanceOrder : LargeString;
  MaintenancePhaseControl : LargeString;
  MaintenancePhaseControlText : LargeString;
  MaintObjPhaseControlStateDesc : LargeString;
  MaintObjPhaseCtrlCodeResetBy : LargeString;
  MaintObjPhaseCtrlCodeSetBy : LargeString;
  MaintObjPhseCtrlCodeRsetDteTme : Timestamp;
  MaintObjPhseCtrlCodeSetDteTime : Timestamp;
  MaintOrdProcessPhaseCode : LargeString;
  MaintOrdProcessSubPhaseCode : LargeString;
  MaintProcgPhseCtrlActvtnCode : LargeString;
  MaintProcgPhseCtrlActvtnDesc : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Rejected.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Rejected.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetReadyForExec.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetReadyForExec.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToDeletnFlagged.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToDeletnFlagged.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPlanning.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPlanning.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPreparation.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPreparation.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToMainWorkCmplt.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToMainWorkCmplt.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToRdyForSchedg.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToRdyForSchedg.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToTechCompleted.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToTechCompleted.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToWorkDone.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToWorkDone.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToWorkStarted.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToWorkStarted.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToWrkNotPerfrmd.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToWrkNotPerfrmd.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

@cds.external : 'true'
@topic : 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SubmdForApproval.v1'
event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SubmdForApproval.v1 {
  MaintenanceOrder : LargeString;
  MaintenanceOrderType : LargeString;
};

