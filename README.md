# SAP S/4 Eventing



## Steps to reproduce
1. `cds init`
2. Import Maintenance Order API
    - Copy API_MAINTENANCEORDER.edmx to ./test/importfiles
    - Import with following command `cds import ./test/importfiles/API_MAINTENANCEORDER.edmx --as cds`
3. Create and test S/4 synchronous access
    1. Creation of synchronous access
        - Execute `npm i` to install all packages
        - create [./srv/sap.cds](./srv/sap.cds)
        ```cds
        using {API_MAINTENANCEORDER as syncS4Workorder} from './external/API_MAINTENANCEORDER';

        @path: 'wos'
        service SapWorkorderService {
            entity WorkOrders as projection on syncS4Workorder.MaintenanceOrder;
        }
        ```
        - add `"type": "module",` to package.json
        - create [./srv/sap.js](./srv/sap.js)
        ```javascript
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
        ```
    2. Test the functionality by doing the following
        1. create a file: `.cdsrc-private.json`
            ```json
            {
                "cds": {
                    "requires": {
                        "API_MAINTENANCEORDER": {
                            "[hybrid]": {
                                "credentials": {
                                    "url": "https://[hostname and port of your sap system]",
                                    "path": "/sap/opu/odata/sap/API_MAINTENANCEORDER",
                                    "username": "[username]",
                                    "password": "[password]"
                                }
                            }
                        }
                    }
                }
            }
            ```
        2. create a rest client test file [./test/http/sap.http](./test/http/sap.http)
            ```http
            @server=http://localhost:4004
            @service=/odata/v4/wos


            ###
            GET {{server}}{{service}}/WorkOrders

            ```
        3. Start CAP in hybrid mode `cds w --profile hybrid`
        4. Execute the GET request -> A list of work orders (if existing should) should be returned.
4. Add the asynchronous API's to Workorder
    1. Import the Async API
         - Copy MAINTENANCEORDEREVENTS.json to ./test/importfiles
        - Import with following command `cds import ./test/importfiles/MAINTENANCEORDEREVENTS.json --from asyncapi --as cds`
    2. Create [./srv/meshexternal.cds](./srv/meshexternal.cds) based on cap docu section 'Add Missing Event Declarations' with content
    ```cds
        using {API_MAINTENANCEORDER as sync} from './external/API_MAINTENANCEORDER';
        using from './external/MAINTENANCEORDEREVENTS';

        extend service sync with {

            @topic: 'sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Approved.v1'
            event sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Approved.v1 {
                MaintenanceOrder     : LargeString;
                MaintenanceOrderType : LargeString;
            };

        }
    ```
    3. Add the following to the init() method in [./srv/sap.js](./srv/sap.js)
    ```javascript
        s4hana.on('sap.s4.beh.maintenanceorder.v1.MaintenanceOrder.Approved.v1', async (req) => {
                console.log('MaintenanceOrder.Approved event received')
            })

    ```
    4. Add the following to requires branch in package.json
    ```json
    "requires": {
        "[hybrid]": {
          "messaging": {
            "kind": "enterprise-messaging-shared",
            "format": "cloudevents",
            "publishPrefix": "$namespace/ce/",
            "subscribePrefix": "+/+/+/ce/"
          }
        }
      },
    ```
          