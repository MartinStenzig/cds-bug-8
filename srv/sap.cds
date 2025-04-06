using {API_MAINTENANCEORDER as syncS4Workorder} from './external/API_MAINTENANCEORDER';

@path: 'wos'
service SapWorkorderService {
  entity WorkOrders as projection on syncS4Workorder.MaintenanceOrder;
}
