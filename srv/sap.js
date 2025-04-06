import cds from '@sap/cds'

export default class SapWorkorderService extends cds.ApplicationService {


    async init() {

        const { WorkOrders } = this.entities


        // Connect to S/4 Maintenance Order Service
        const s4hana = await cds.connect.to('API_MAINTENANCEORDER')


        // Forward requests to S/4 HANA
        this.on('*', WorkOrders, async (req) => {
            return s4hana.tx(req).run(req.query)
        })

        return super.init(...arguments)
    }

}