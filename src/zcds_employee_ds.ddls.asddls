@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS ZHR_EMPLOYEE_DS'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_EMPLOYEE_DS
  as select from zhr_employee_ds
  composition [0..*] of ZCDS_EMPOYMENT_DS as _EMPLOYMENT
  composition [0..*] of ZCDS_ADDRESS_DS   as _EMPLOYMENT1
  composition [0..*] of ZCDS_CONTRACT_DS  as _EMPLOYMENT2
  composition [0..*] of ZCDS_FAMILY_DS    as _EMPLOYMENT3
{

      @UI.facet: [{
                   id : 'EMPLOYEE',
                   purpose : #STANDARD,
                   type : #IDENTIFICATION_REFERENCE,
                   label : 'EMPLOYEE',
                   position : 10  },

                   {
                   id : 'EMPLOYMENT',
                   purpose : #STANDARD,
                   type : #LINEITEM_REFERENCE,
                   label : 'EMPLOYMENT',
                   targetElement : '_EMPLOYMENT',
                   position : 20
                   },
                   {
                   id : 'ADDRESS',
                   purpose : #STANDARD,
                   type : #LINEITEM_REFERENCE,
                   label : 'ADDRESS',
                   targetElement : '_EMPLOYMENT1',
                   position : 30
                   },
                    {
                   id : 'CONTRACT',
                   purpose : #STANDARD,
                   type : #LINEITEM_REFERENCE,
                   label : 'CONTRACT',
                   targetElement : '_EMPLOYMENT2',
                   position : 40
                   },
                    {
                   id : 'FAMILY',
                   purpose : #STANDARD,
                   type : #LINEITEM_REFERENCE,
                   label : 'FAMILY1',
                   targetElement : '_EMPLOYMENT3',
                   position : 50
                   }   ]
    @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Employeeid'}]
    @UI.identification: [{ position : 10 }]
  key employeeid  as Employeeid,
   @UI.lineItem: [{ position : 20 , label : 'Firstname'}]
    @UI.identification: [{ position : 20 }]
      firstname   as Firstname,
       @UI.lineItem: [{ position : 20 , label : 'Lastname'}]
    @UI.identification: [{ position : 20 }]
      lastname    as Lastname,
       @UI.lineItem: [{ position : 30 , label : 'Dateofbirth'}]
    @UI.identification: [{ position : 30 }]
      dateofbirth as Dateofbirth,
       @UI.lineItem: [{ position : 40 , label : 'Gender'}]
    @UI.identification: [{ position : 40 }]
      gender      as Gender,
       @UI.lineItem: [{ position : 50 , label : 'Nationality'}]
    @UI.identification: [{ position : 50 }]
      nationality as Nationality,
      _EMPLOYMENT,
      _EMPLOYMENT1,
      _EMPLOYMENT2,
      _EMPLOYMENT3
}
