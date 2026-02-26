@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_DB1_22BM050000050'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_DB1_22BM050000050
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_DB1_22BM050000050
  association [1..1] to ZZCIR_CIT_DB1_22BM050000050 as _BaseEntity on $projection.ID = _BaseEntity.ID
{
  key ID,
  Firstname,
  Lastname,
  Age,
  Course,
  Courseduration,
  Status,
  Gender,
  Dob,
  @Semantics: {
    User.Createdby: true
  }
  LocalCreatedBy,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  LocalCreatedAt,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  LocalLastChangedBy,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  LocalLastChangedAt,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  LastChangedAt,
  _BaseEntity
}
