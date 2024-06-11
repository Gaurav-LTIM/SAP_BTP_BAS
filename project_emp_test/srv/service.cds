using schema as sh from '../db/data-model';

service EmployeeServices
{
    entity Employees @(
      Capabilities:{
        InsertRestrictions:{Insertable: true},
        UpdateRestrictions:{Updatable: true},
        DeleteRestrictions:{Deletable: false}
        },
        )
    as projection on sh.EMPLOYEE_DETAILS;
    annotate Employees with @odata.draft.bypass;

    entity Department @(

      Capabilities:{
        InsertRestrictions:{Insertable: true},
        UpdateRestrictions:{Updatable: true},
        DeleteRestrictions:{Deletable: false}
        }
    )
    as projection on sh.DEPARTMENT;
    annotate Department with @odata.draft.bypass;
    
};