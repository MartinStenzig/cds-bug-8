import cds from '@sap/cds'

export default class SapWorkorderService extends cds.ApplicationService {


    async init() {

        const { WorkOrders } = this.entities

        // Connect to S/4 Maintenance Order Service
        const s4hana = await cds.connect.to('API_MAINTENANCEORDER')

        s4hana.on('sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPlanning.v1', async (msg) => {
            console.log('MaintenanceOrder created', msg)
        })

        s4hana.on('sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToInPreparation.v1', async (msg) => {
            console.log('MaintenanceOrder released', msg)
        })

        s4hana.on('sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.SetToTechCompleted.v1', async (msg) => {
            console.log('MaintenanceOrder teco', msg)
        })

        s4hana.on('sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Closed.v1', async (msg) => {
            console.log('MaintenanceOrder closed', msg)
        })



        // Forward requests to S/4 HANA
        this.on('*', WorkOrders, async (req) => {
            return s4hana.tx(req).run(req.query)
        })

        return super.init(...arguments)
    }

}