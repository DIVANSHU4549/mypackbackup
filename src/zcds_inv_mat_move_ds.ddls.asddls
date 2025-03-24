@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS_INV_MAT_MOVE_DS'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_INV_MAT_MOVE_DS as select from ZINV_MAT_MOVE_DS
association to parent ZCDS_CURRENTSTOCK_DS as _CURRENTSTOCK
    on $projection.Materialid = _CURRENTSTOCK.Materialid
{
     @ui.facet: [{ 
     id : 'MATERIAL MOVEMENT',
               purpose : #STANDARD,
               type : #IDENTIFICATION_REFERENCE,
               label : 'MATERIAL MOVEMENT',
               position : 10  }]
               
     @UI.selectionField: [{ position : 10 }]
    @UI.lineItem: [{ position : 10 , label : 'Movementid'}]
    @UI.identification: [{ position : 10 }]
    key movementid as Movementid,
     @UI.lineItem: [{ position : 20 , label : 'Materialid'}]
    @UI.identification: [{ position : 20 }]
    key materialid as Materialid,
     @UI.lineItem: [{ position : 30 , label : 'Plant'}]
    @UI.identification: [{ position : 30 }]
    plant as Plant,
     @UI.lineItem: [{ position : 40 , label : 'Storagelocation'}]
    @UI.identification: [{ position : 40 }]
    storagelocation as Storagelocation,
     @UI.lineItem: [{ position : 50 , label : 'Quantity'}]
    @UI.identification: [{ position : 50 }]
    quantity as Quantity,
     @UI.lineItem: [{ position : 60 , label : 'Unitofmeasure'}]
    @UI.identification: [{ position : 60 }]
    unitofmeasure as Unitofmeasure,
     @UI.lineItem: [{ position : 70 , label : 'Movementdate'}]
    @UI.identification: [{ position : 70 }]
    movementdate as Movementdate,
    _CURRENTSTOCK // Make association public 
}
