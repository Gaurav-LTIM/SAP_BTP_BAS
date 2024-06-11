using schema as sh from '../db/data-model';

service EmployeeServices
{
    entity Employees @(
        Capabilities : {
            InsertRestrictions : {
                $Type : 'Capabilities.InsertRestrictionsType',
                Insertable
            },
            DeleteRestrictions : {
                $Type : 'Capabilities.DeleteRestrictionsType',
                Deletable
            },
            UpdateRestrictions : {
                $Type : 'Capabilities.UpdateRestrictionsType',
                Updatable
            },
        }
    )
    as projection on sh.EMPLOYEE_DETAILS;
    annotate Employees with @odata.draft.enabled;

    @readonly entity Department as projection on sh.DEPARTMENT;
    annotate Department with @odata.draft.enabled;
    
};

