// using EmployeeServices as service from '../../srv/services';

using EmployeeServices from '../../srv/services';

annotate EmployeeServices.Employees with @(
UI : 
{
    //Filter bar
    SelectionFields  : 
    [
        department_ID,
    ],

    // Table Structure
    LineItem  : [
          {
              $Type : 'UI.DataField',
              Value : name,
          },
          {
              $Type : 'UI.DataField',
              Value : email_id,
          },
          {
              $Type : 'UI.DataField',
              Value : department.name,
          },
    ],

    // Object Page Designing
    HeaderInfo  : {
        $Type : 'UI.HeaderInfoType',
        TypeName : 'Employee',
        TypeNamePlural : 'Employees',
    },

    //Facets
    Facets  : [
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Default',
            ID: 'Default',
            Label: 'General',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Target : '@UI.FieldGroup#Admin',
            ID: 'Admindata',
            Label: 'Administrative Data',
        },
    ],

    //field group

    FieldGroup #Default : {
        $Type : 'UI.FieldGroupType',
        Data : 
        [
            {
                $Type : 'UI.DataField',
                Value : name,
            },
            {
                $Type : 'UI.DataField',
                Value : email_id,
            },
            {
                $Type : 'UI.DataField',
                Value : department_ID,
            },
            {
                $Type : 'UI.DataField',
                Value : department.name,
            },
        ]
    },

    FieldGroup #Admin : {
        $Type : 'UI.FieldGroupType',
        Data : 
        [
            {
                $Type : 'UI.DataField',
                Value : createdAt,
            },
            {
                $Type : 'UI.DataField',
                Value : createdBy,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedAt,
            },
            {
                $Type : 'UI.DataField',
                Value : modifiedBy,
            },
        ]
    },
}
)
{
    name @title: 'Name';
    email_id @title: 'Email ID';
    department @(
        title: 'Department',
        Common :
        {
            ValueListWithFixedValues,
            ValueList : {
                $Type : 'Common.ValueListType',
                CollectionPath : 'Department',
                Label : 'Departments',
                Parameters: 
                [
                    {
                        $Type : 'Common.ValueListParameterOut',
                        LocalDataProperty : department_ID,
                        ValueListProperty : 'ID',
                    },
                    {
                        $Type : 'Common.ValueListParameterDisplayOnly',
                        ValueListProperty : 'name',
                    },
                ]
            },
            
        }
    );
}

//---------------- Reference Code ---------------------- //

// annotate service.Employees with @(
//     UI.LineItem : [
//         {
//             $Type : 'UI.DataField',
//             Label : 'name',
//             Value : name,
//         },
//         {
//             $Type : 'UI.DataField',
//             Label : 'email_id',
//             Value : email_id,
//         },
//     ]
// );
// annotate service.Employees with {
//     department @Common.ValueList : {
//         $Type : 'Common.ValueListType',
//         CollectionPath : 'Department',
//         Parameters : [
//             {
//                 $Type : 'Common.ValueListParameterInOut',
//                 LocalDataProperty : department_ID,
//                 ValueListProperty : 'ID',
//             },
//             {
//                 $Type : 'Common.ValueListParameterDisplayOnly',
//                 ValueListProperty : 'name',
//             },
//         ],
//     }
// };
// annotate service.Employees with @(
//     UI.FieldGroup #GeneratedGroup1 : {
//         $Type : 'UI.FieldGroupType',
//         Data : [
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'name',
//                 Value : name,
//             },
//             {
//                 $Type : 'UI.DataField',
//                 Label : 'email_id',
//                 Value : email_id,
//             },
//         ],
//     },
//     UI.Facets : [
//         {
//             $Type : 'UI.ReferenceFacet',
//             ID : 'GeneratedFacet1',
//             Label : 'General Information',
//             Target : '@UI.FieldGroup#GeneratedGroup1',
//         },
//     ]
// );