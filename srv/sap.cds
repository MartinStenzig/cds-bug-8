using {API_MAINTENANCEORDER as s4} from './meshexternal.cds';


@path: 'wos'
service SapWorkorderService {
  entity WorkOrders as projection on s4.MaintenanceOrder;
}
