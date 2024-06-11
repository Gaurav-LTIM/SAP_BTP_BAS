// const { spawn } = require("child_process");

// spawn.ui.define(
//     ['sap/fe/core/AppComponent'],
//     ac=> ac.extend('bookshop.Component',{
//         metadata: {
//             manifest:   'json'
//         }
//     })
// )

sap.ui.define(
    ['sap/fe/core/AppComponent'],
    ac=> ac.extend('bookshop.Component',{
        metadata: {
            manifest: 'json'
        }
    })
)