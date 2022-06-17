[Ivy]
1811FD33E36CAB39 9.3.1 #module
>Proto >Proto Collection #zClass
Do0 DocuWareDemo Big #zClass
Do0 B #cInfo
Do0 #process
Do0 @AnnotationInP-0n ai ai #zField
Do0 @TextInP .type .type #zField
Do0 @TextInP .processKind .processKind #zField
Do0 @TextInP .xml .xml #zField
Do0 @TextInP .responsibility .responsibility #zField
Do0 @StartRequest f0 '' #zField
Do0 @EndTask f1 '' #zField
Do0 @UserDialog f3 '' #zField
Do0 @PushWFArc f4 '' #zField
Do0 @PushWFArc f2 '' #zField
Do0 @StartRequest f5 '' #zField
Do0 @RestClientCall f6 '' #zField
Do0 @EndTask f8 '' #zField
Do0 @GridStep f10 '' #zField
Do0 @PushWFArc f11 '' #zField
Do0 @PushWFArc f9 '' #zField
Do0 @PushWFArc f14 '' #zField
Do0 @StartRequest f7 '' #zField
Do0 @RestClientCall f12 '' #zField
Do0 @EndTask f15 '' #zField
Do0 @RestClientCall f17 '' #zField
Do0 @PushWFArc f18 '' #zField
Do0 @PushWFArc f13 '' #zField
Do0 @GridStep f19 '' #zField
Do0 @PushWFArc f20 '' #zField
Do0 @PushWFArc f16 '' #zField
>Proto Do0 Do0 DocuWareDemo #zField
Do0 f0 outLink start.ivp #txt
Do0 f0 inParamDecl '<> param;' #txt
Do0 f0 requestEnabled true #txt
Do0 f0 triggerEnabled false #txt
Do0 f0 callSignature start() #txt
Do0 f0 startName 'Start some DocuWare calls' #txt
Do0 f0 startDescription 'Start a UI to demonstrate some basic UI calls.' #txt
Do0 f0 caseData businessCase.attach=true #txt
Do0 f0 @CG|tags demo #txt
Do0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start.ivp</name>
        <desc>Start a simple UI to demonstrate some DocuWare calls.</desc>
    </language>
</elementInfo>
' #txt
Do0 f0 @C|.responsibility Everybody #txt
Do0 f0 81 49 30 30 -21 17 #rect
Do0 f1 337 49 30 30 0 15 #rect
Do0 f3 dialogId com.axonivy.connector.docuware.connector.demo.DocuWareDemo #txt
Do0 f3 startMethod start() #txt
Do0 f3 requestActionDecl '<> param;' #txt
Do0 f3 responseMappingAction 'out=in;
' #txt
Do0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>DocuWare Demo</name>
    </language>
</elementInfo>
' #txt
Do0 f3 168 42 112 44 -47 -8 #rect
Do0 f4 111 64 168 64 #arcP
Do0 f2 280 64 337 64 #arcP
Do0 f5 outLink organizations.ivp #txt
Do0 f5 inParamDecl '<> param;' #txt
Do0 f5 actionCode 'import org.apache.commons.lang3.StringUtils;
ivy.log.info("Username: {0}", ivy.var.get("docuware-connector.username"));
ivy.log.info("Password set: {0}", StringUtils.isNotBlank(ivy.var.get("docuware-connector_password")));
ivy.log.info("HostId: {0}", ivy.var.get("docuware-connector_hostid"));
ivy.log.info("BaseUrl: {0}", ivy.var.get("docuware-connector_baseurl"));



' #txt
Do0 f5 requestEnabled true #txt
Do0 f5 triggerEnabled false #txt
Do0 f5 callSignature organizations() #txt
Do0 f5 startName 'Log Organization names' #txt
Do0 f5 startDescription 'Fetch organizations of this DocuWare instance and log them to the log file.' #txt
Do0 f5 caseData businessCase.attach=true #txt
Do0 f5 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>organizations.ivp</name>
    </language>
</elementInfo>
' #txt
Do0 f5 @C|.responsibility Everybody #txt
Do0 f5 81 209 30 30 -52 33 #rect
Do0 f6 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f6 path /Organizations #txt
Do0 f6 headers 'Accept=application/xml;
' #txt
Do0 f6 resultType com.docuware.dev.schema._public.services.platform.Organizations #txt
Do0 f6 responseCode out.organizations.getOrganization().addAll(result.getOrganization()); #txt
Do0 f6 clientErrorCode ivy:error:rest:client #txt
Do0 f6 statusErrorCode ivy:error:rest:client #txt
Do0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Organizations</name>
    </language>
</elementInfo>
' #txt
Do0 f6 168 202 112 44 -53 -8 #rect
Do0 f8 497 209 30 30 0 15 #rect
Do0 f10 actionTable 'out=in;
' #txt
Do0 f10 actionCode 'import com.docuware.dev.schema._public.services.platform.Organization;

ivy.log.info("Found organizations: {0}", in.organizations.getOrganization().size());
for(Organization org : in.organizations.getOrganization()) {
	ivy.log.info("Organization: {0} ({1})", org.name, org.id);
}' #txt
Do0 f10 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Show Organizations</name>
    </language>
</elementInfo>
' #txt
Do0 f10 320 202 128 44 -55 -8 #rect
Do0 f11 280 224 320 224 #arcP
Do0 f9 448 224 497 224 #arcP
Do0 f14 111 224 168 224 #arcP
Do0 f7 outLink fileCabinets.ivp #txt
Do0 f7 inParamDecl '<> param;' #txt
Do0 f7 requestEnabled true #txt
Do0 f7 triggerEnabled false #txt
Do0 f7 callSignature fileCabinets() #txt
Do0 f7 caseData businessCase.attach=true #txt
Do0 f7 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileCabinets.ivp</name>
    </language>
</elementInfo>
' #txt
Do0 f7 @C|.responsibility Everybody #txt
Do0 f7 81 337 30 30 -29 17 #rect
Do0 f12 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f12 path /FileCabinets #txt
Do0 f12 queryParams 'orgid=in.organizations.getOrganization().get(0).id;
' #txt
Do0 f12 headers 'Accept=application/xml;
' #txt
Do0 f12 resultType com.docuware.dev.schema._public.services.platform.FileCabinets #txt
Do0 f12 responseMapping 'out.fileCabinets=result;
' #txt
Do0 f12 clientErrorCode ivy:error:rest:client #txt
Do0 f12 statusErrorCode ivy:error:rest:client #txt
Do0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Files</name>
    </language>
</elementInfo>
' #txt
Do0 f12 328 330 112 44 -14 -7 #rect
Do0 f15 657 337 30 30 0 15 #rect
Do0 f17 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f17 path /Organizations #txt
Do0 f17 headers 'Accept=application/xml;
' #txt
Do0 f17 resultType com.docuware.dev.schema._public.services.platform.Organizations #txt
Do0 f17 responseCode out.organizations.getOrganization().addAll(result.getOrganization()); #txt
Do0 f17 clientErrorCode ivy:error:rest:client #txt
Do0 f17 statusErrorCode ivy:error:rest:client #txt
Do0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Load Organizations</name>
    </language>
</elementInfo>
' #txt
Do0 f17 168 330 112 44 -53 -8 #rect
Do0 f18 111 352 168 352 #arcP
Do0 f13 280 352 328 352 #arcP
Do0 f19 actionTable 'out=in;
' #txt
Do0 f19 actionCode 'import com.docuware.dev.schema._public.services.platform.FileCabinet;


for(FileCabinet fc : in.fileCabinets.getFileCabinet()) {
  ivy.log.info("FileCabinet: "+fc.getName());
}' #txt
Do0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Log Cabinets</name>
    </language>
</elementInfo>
' #txt
Do0 f19 488 330 112 44 -40 -7 #rect
Do0 f20 440 352 488 352 #arcP
Do0 f16 600 352 657 352 #arcP
>Proto Do0 .type com.axonivy.market.docuware.connector.demo.Data #txt
>Proto Do0 .processKind NORMAL #txt
>Proto Do0 0 0 32 24 18 0 #rect
>Proto Do0 @|BIcon #fIcon
Do0 f0 mainOut f4 tail #connect
Do0 f4 head f3 mainIn #connect
Do0 f3 mainOut f2 tail #connect
Do0 f2 head f1 mainIn #connect
Do0 f6 mainOut f11 tail #connect
Do0 f11 head f10 mainIn #connect
Do0 f10 mainOut f9 tail #connect
Do0 f9 head f8 mainIn #connect
Do0 f5 mainOut f14 tail #connect
Do0 f14 head f6 mainIn #connect
Do0 f7 mainOut f18 tail #connect
Do0 f18 head f17 mainIn #connect
Do0 f17 mainOut f13 tail #connect
Do0 f13 head f12 mainIn #connect
Do0 f12 mainOut f20 tail #connect
Do0 f20 head f19 mainIn #connect
Do0 f19 mainOut f16 tail #connect
Do0 f16 head f15 mainIn #connect
