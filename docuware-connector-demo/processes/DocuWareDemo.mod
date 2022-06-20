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
Do0 @RestClientCall f17 '' #zField
Do0 @PushWFArc f18 '' #zField
Do0 @PushWFArc f13 '' #zField
Do0 @GridStep f19 '' #zField
Do0 @PushWFArc f20 '' #zField
Do0 @RestClientCall f21 '' #zField
Do0 @PushWFArc f22 '' #zField
Do0 @RestClientCall f28 '' #zField
Do0 @PushWFArc f29 '' #zField
Do0 @RestClientCall f23 '' #zField
Do0 @PushWFArc f24 '' #zField
Do0 @RestClientCall f25 '' #zField
Do0 @PushWFArc f26 '' #zField
Do0 @StartRequest f27 '' #zField
Do0 @PushWFArc f16 '' #zField
Do0 @EndTask f15 '' #zField
Do0 @RestClientCall f31 '' #zField
Do0 @PushWFArc f32 '' #zField
Do0 @RestClientCall f33 '' #zField
Do0 @PushWFArc f34 '' #zField
Do0 @RestClientCall f35 '' #zField
Do0 @PushWFArc f36 '' #zField
Do0 @RestClientCall f37 '' #zField
Do0 @StartRequest f38 '' #zField
Do0 @PushWFArc f39 '' #zField
Do0 @PushWFArc f40 '' #zField
Do0 @RestClientCall f41 '' #zField
Do0 @PushWFArc f42 '' #zField
Do0 @RestClientCall f43 '' #zField
Do0 @RestClientCall f44 '' #zField
Do0 @StartRequest f45 '' #zField
Do0 @PushWFArc f46 '' #zField
Do0 @PushWFArc f47 '' #zField
Do0 @RestClientCall f49 '' #zField
Do0 @PushWFArc f50 '' #zField
Do0 @PushWFArc f51 '' #zField
Do0 @RestClientCall f30 '' #zField
Do0 @PushWFArc f52 '' #zField
Do0 @RestClientCall f53 '' #zField
Do0 @PushWFArc f54 '' #zField
Do0 @RestClientCall f55 '' #zField
Do0 @PushWFArc f56 '' #zField
Do0 @PushWFArc f48 '' #zField
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
Do0 f7 startName 'Load File Cabinets' #txt
Do0 f7 startDescription 'Load FileCabinets
from your Organization' #txt
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
Do0 f21 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f21 path /FileCabinets/{FileCabinetId} #txt
Do0 f21 templateParams 'FileCabinetId=in.fileCabinets.getFileCabinet().get(0).id;
' #txt
Do0 f21 headers 'Accept=application/xml;
' #txt
Do0 f21 resultType com.docuware.dev.schema._public.services.platform.FileCabinet #txt
Do0 f21 responseMapping 'out.cabinet=result;
' #txt
Do0 f21 responseCode 'ivy.log.info("first cabinet: "+result.name);' #txt
Do0 f21 clientErrorCode ivy:error:rest:client #txt
Do0 f21 statusErrorCode ivy:error:rest:client #txt
Do0 f21 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read 
Cabinet</name>
    </language>
</elementInfo>
' #txt
Do0 f21 488 418 112 44 -24 -15 #rect
Do0 f22 544 374 544 418 #arcP
Do0 f28 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f28 path /FileCabinets/{FileCabinetId}/Documents #txt
Do0 f28 queryParams 'q=;
fields=;
sortOrder=;
' #txt
Do0 f28 templateParams 'FileCabinetId=in.cabinet.getId();
' #txt
Do0 f28 method GET #txt
Do0 f28 bodyInputType ENTITY #txt
Do0 f28 resultType com.docuware.dev.schema._public.services.platform.DocumentsQueryResult #txt
Do0 f28 responseMapping 'out.document=result.items.getItem().get(0);
' #txt
Do0 f28 clientErrorCode ivy:error:rest:client #txt
Do0 f28 statusErrorCode ivy:error:rest:client #txt
Do0 f28 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Query 
Documents</name>
    </language>
</elementInfo>
' #txt
Do0 f28 664 330 112 44 -35 -15 #rect
Do0 f29 600 440 664 352 #arcP
Do0 f29 1 640 440 #addKink
Do0 f29 2 640 352 #addKink
Do0 f29 1 0.4724494028904856 0 0 #arcLabel
Do0 f23 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f23 path /FileCabinets/{FileCabinetId}/Documents/{DocumentId} #txt
Do0 f23 templateParams 'DocumentId=in.document.getId().toString();
FileCabinetId=in.cabinet.getId();
' #txt
Do0 f23 resultType com.docuware.dev.schema._public.services.platform.Document #txt
Do0 f23 responseMapping 'out.document=result;
' #txt
Do0 f23 responseCode 'ivy.log.info("found document: " + result.title);' #txt
Do0 f23 clientErrorCode ivy:error:rest:client #txt
Do0 f23 statusErrorCode ivy:error:rest:client #txt
Do0 f23 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read 
Document</name>
    </language>
</elementInfo>
' #txt
Do0 f23 664 418 112 44 -32 -15 #rect
Do0 f24 720 374 720 418 #arcP
Do0 f25 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f25 path /FileCabinets/{FileCabinetId}/Documents/{DocumentId}/FileDownload #txt
Do0 f25 queryParams 'targetFileType=;
keepAnnotations=;
' #txt
Do0 f25 templateParams 'DocumentId=in.document.id.toString();
FileCabinetId=in.cabinet.id;
' #txt
Do0 f25 method GET #txt
Do0 f25 resultType '[B' #txt
Do0 f25 responseCode 'in.file = new File(in.document.title, true);
in.file.createNewFile();
in.file.writeBinary(result);' #txt
Do0 f25 clientErrorCode ivy:error:rest:client #txt
Do0 f25 statusErrorCode ivy:error:rest:client #txt
Do0 f25 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Download
File</name>
    </language>
</elementInfo>
' #txt
Do0 f25 848 418 112 44 -30 -15 #rect
Do0 f26 776 440 848 440 #arcP
Do0 f27 outLink downloadFile.ivp #txt
Do0 f27 inParamDecl '<> param;' #txt
Do0 f27 inParamTable 'out.cabinet.id="c1436a27-9e35-4856-b27e-826327a4f96b";
out.document.id=165;
' #txt
Do0 f27 requestEnabled true #txt
Do0 f27 triggerEnabled false #txt
Do0 f27 callSignature downloadFile() #txt
Do0 f27 caseData businessCase.attach=true #txt
Do0 f27 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>downloadFile.ivp</name>
    </language>
</elementInfo>
' #txt
Do0 f27 @C|.responsibility Everybody #txt
Do0 f27 705 521 30 30 -48 28 #rect
Do0 f16 720 521 720 462 #arcP
Do0 f15 1505 417 30 30 0 15 #rect
Do0 f31 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f31 path /FileCabinets/{FileCabinetId}/Sections #txt
Do0 f31 queryParams 'docid=in.document.id.toString();
' #txt
Do0 f31 templateParams 'FileCabinetId=in.cabinet.id;
' #txt
Do0 f31 method GET #txt
Do0 f31 resultType com.docuware.dev.schema._public.services.platform.Sections #txt
Do0 f31 responseMapping 'out.section=result.getSection().get(0);
' #txt
Do0 f31 clientErrorCode ivy:error:rest:client #txt
Do0 f31 statusErrorCode ivy:error:rest:client #txt
Do0 f31 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>List
Sections</name>
    </language>
</elementInfo>
' #txt
Do0 f31 848 506 112 44 -27 -15 #rect
Do0 f32 904 462 904 506 #arcP
Do0 f33 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f33 path /FileCabinets/{FileCabinetId}/Sections/{Section} #txt
Do0 f33 queryParams 'docid=in.document.id.toString();
' #txt
Do0 f33 templateParams 'FileCabinetId=in.cabinet.id;
Section=in.section.id;
' #txt
Do0 f33 method GET #txt
Do0 f33 resultType com.docuware.dev.schema._public.services.platform.Section #txt
Do0 f33 clientErrorCode ivy:error:rest:client #txt
Do0 f33 statusErrorCode ivy:error:rest:client #txt
Do0 f33 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read
Section</name>
    </language>
</elementInfo>
' #txt
Do0 f33 1000 506 112 44 -23 -15 #rect
Do0 f34 960 528 1000 528 #arcP
Do0 f35 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f35 path /FileCabinets/{FileCabinetId}/Sections/{Section}/Data #txt
Do0 f35 queryParams 'docid=in.document.id.toString();
' #txt
Do0 f35 templateParams 'FileCabinetId=in.cabinet.id;
Section=in.section.id;
' #txt
Do0 f35 method GET #txt
Do0 f35 resultType '[B' #txt
Do0 f35 responseCode 'in.file = new File("section-"+in.section.originalFileName, true);
in.file.createNewFile();
in.file.writeBinary(result);' #txt
Do0 f35 clientErrorCode ivy:error:rest:client #txt
Do0 f35 statusErrorCode ivy:error:rest:client #txt
Do0 f35 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Download
Section</name>
    </language>
</elementInfo>
' #txt
Do0 f35 1000 418 112 44 -30 -15 #rect
Do0 f36 1056 506 1056 462 #arcP
Do0 f37 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f37 path /FileCabinets/{FileCabinetId}/Documents/{DocumentId} #txt
Do0 f37 templateParams 'DocumentId=in.document.getId().toString();
FileCabinetId=in.cabinet.getId();
' #txt
Do0 f37 resultType com.docuware.dev.schema._public.services.platform.Document #txt
Do0 f37 responseMapping 'out.document=result;
' #txt
Do0 f37 responseCode 'ivy.log.info("found document: " + result.title);' #txt
Do0 f37 clientErrorCode ivy:error:rest:client #txt
Do0 f37 statusErrorCode ivy:error:rest:client #txt
Do0 f37 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read 
Document</name>
    </language>
</elementInfo>
' #txt
Do0 f37 848 594 112 44 -32 -15 #rect
Do0 f38 outLink sections.ivp #txt
Do0 f38 inParamDecl '<> param;' #txt
Do0 f38 inParamTable 'out.cabinet.id="c1436a27-9e35-4856-b27e-826327a4f96b";
out.document.id=165;
' #txt
Do0 f38 requestEnabled true #txt
Do0 f38 triggerEnabled false #txt
Do0 f38 callSignature sections() #txt
Do0 f38 caseData businessCase.attach=true #txt
Do0 f38 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>sections.ivp</name>
    </language>
</elementInfo>
' #txt
Do0 f38 @C|.responsibility Everybody #txt
Do0 f38 889 697 30 30 -29 17 #rect
Do0 f39 904 697 904 638 #arcP
Do0 f40 904 594 904 550 #arcP
Do0 f41 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f41 path /FileCabinets/{FileCabinetId}/Sections #txt
Do0 f41 queryParams 'docid=;
DocId=in.document.id.toString();
' #txt
Do0 f41 templateParams 'FileCabinetId=in.cabinet.id;
Section=in.section.id;
' #txt
Do0 f41 method POST #txt
Do0 f41 bodyInputType FORM #txt
Do0 f41 bodyMediaType multipart/form-data #txt
Do0 f41 bodyForm 'file=in.file.getJavaFile();
' #txt
Do0 f41 bodyObjectType com.docuware.dev.schema._public.services.platform.FileCabinetIdSectionsBody #txt
Do0 f41 resultType com.docuware.dev.schema._public.services.platform.Section #txt
Do0 f41 clientErrorCode ivy:error:rest:client #txt
Do0 f41 statusErrorCode ivy:error:rest:client #txt
Do0 f41 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Upload
Section</name>
    </language>
</elementInfo>
' #txt
Do0 f41 1160 418 112 44 -23 -15 #rect
Do0 f42 1112 440 1160 440 #arcP
Do0 f43 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f43 path /FileCabinets/{FileCabinetId}/Query/CountExpression #txt
Do0 f43 queryParams 'dialogId=;
' #txt
Do0 f43 templateParams 'FileCabinetId=in.cabinet.id;
' #txt
Do0 f43 method GET #txt
Do0 f43 clientErrorCode ivy:error:rest:client #txt
Do0 f43 statusErrorCode ivy:error:rest:client #txt
Do0 f43 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Count</name>
    </language>
</elementInfo>
' #txt
Do0 f43 1160 594 112 44 -18 -7 #rect
Do0 f44 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f44 path /FileCabinets/{FileCabinetId}/Documents/{DocumentId} #txt
Do0 f44 templateParams 'DocumentId=in.document.getId().toString();
FileCabinetId=in.cabinet.getId();
' #txt
Do0 f44 resultType com.docuware.dev.schema._public.services.platform.Document #txt
Do0 f44 responseMapping 'out.document=result;
' #txt
Do0 f44 responseCode 'ivy.log.info("found document: " + result.title);' #txt
Do0 f44 clientErrorCode ivy:error:rest:client #txt
Do0 f44 statusErrorCode ivy:error:rest:client #txt
Do0 f44 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Read 
Document</name>
    </language>
</elementInfo>
' #txt
Do0 f44 1160 682 112 44 -32 -15 #rect
Do0 f45 outLink dialogs.ivp #txt
Do0 f45 inParamDecl '<> param;' #txt
Do0 f45 inParamTable 'out.cabinet.id="c1436a27-9e35-4856-b27e-826327a4f96b";
out.document.id=165;
' #txt
Do0 f45 requestEnabled true #txt
Do0 f45 triggerEnabled false #txt
Do0 f45 callSignature dialogs() #txt
Do0 f45 caseData businessCase.attach=true #txt
Do0 f45 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>dialogs.ivp</name>
    </language>
</elementInfo>
' #txt
Do0 f45 @C|.responsibility Everybody #txt
Do0 f45 1201 785 30 30 -29 17 #rect
Do0 f46 1216 785 1216 726 #arcP
Do0 f47 1216 682 1216 638 #arcP
Do0 f49 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f49 path /FileCabinets/{FileCabinetId}/Dialogs #txt
Do0 f49 queryParams 'dialogId=;
' #txt
Do0 f49 templateParams 'FileCabinetId=in.cabinet.id;
' #txt
Do0 f49 method GET #txt
Do0 f49 resultType java.util.List<com.docuware.dev.schema._public.services.platform.Dialog> #txt
Do0 f49 responseMapping 'out.dialog=result.get(0);
' #txt
Do0 f49 clientErrorCode ivy:error:rest:client #txt
Do0 f49 statusErrorCode ivy:error:rest:client #txt
Do0 f49 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Dialog
By Type</name>
    </language>
</elementInfo>
' #txt
Do0 f49 1160 514 112 44 -32 -15 #rect
Do0 f50 1216 594 1216 558 #arcP
Do0 f51 1216 462 1216 514 #arcP
Do0 f30 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f30 path /FileCabinets/{FileCabinetId}/Dialogs/{SearchDialogId} #txt
Do0 f30 queryParams 'dialogType=;
' #txt
Do0 f30 templateParams 'FileCabinetId=in.cabinet.id;
SearchDialogId=in.dialog.id;
' #txt
Do0 f30 method GET #txt
Do0 f30 resultType java.util.List<com.docuware.dev.schema._public.services.platform.Dialog> #txt
Do0 f30 clientErrorCode ivy:error:rest:client #txt
Do0 f30 statusErrorCode ivy:error:rest:client #txt
Do0 f30 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Dialog
By ID</name>
    </language>
</elementInfo>
' #txt
Do0 f30 1304 514 112 44 -32 -15 #rect
Do0 f52 1272 536 1304 536 #arcP
Do0 f52 0 0.8061418304181084 0 0 #arcLabel
Do0 f53 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f53 path /FileCabinets/{FileCabinetId}/Query/DialogExpression #txt
Do0 f53 queryParams 'dialogId=in.dialog.id;
format=;
' #txt
Do0 f53 templateParams 'FileCabinetId=in.cabinet.id;
SearchDialogId=;
' #txt
Do0 f53 method POST #txt
Do0 f53 bodyInputType ENTITY #txt
Do0 f53 bodyObjectType com.docuware.dev.schema._public.services.platform.DialogExpression #txt
Do0 f53 resultType com.docuware.dev.schema._public.services.platform.DocumentsQueryResult #txt
Do0 f53 responseCode ivy.log.info(result.items.getItem().get(0).getTitle()); #txt
Do0 f53 clientErrorCode ivy:error:rest:client #txt
Do0 f53 statusErrorCode ivy:error:rest:client #txt
Do0 f53 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Dialog
By Expression</name>
    </language>
</elementInfo>
' #txt
Do0 f53 1456 514 128 44 -41 -15 #rect
Do0 f54 1416 536 1456 536 #arcP
Do0 f55 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Do0 f55 path /FileCabinets/{FileCabinetId}/Query/DialogExpressionLink #txt
Do0 f55 queryParams 'dialogId=in.dialog.id;
format=;
' #txt
Do0 f55 templateParams 'FileCabinetId=in.cabinet.id;
SearchDialogId=;
' #txt
Do0 f55 method POST #txt
Do0 f55 bodyInputType ENTITY #txt
Do0 f55 bodyObjectType com.docuware.dev.schema._public.services.platform.MultiColumnSelectListValuesQuery #txt
Do0 f55 bodyObjectMapping 'param.operation=com.docuware.dev.schema._public.services.platform.DialogExpressionOperation.OR;
' #txt
Do0 f55 bodyObjectCode 'import com.docuware.dev.schema._public.services.platform.MultiColumnSelectListExpressionCondition;

MultiColumnSelectListExpressionCondition condition;
condition.columnName = "mycol";
condition.dBName = "myDb";
param.getCondition().add(condition);' #txt
Do0 f55 clientErrorCode ivy:error:rest:client #txt
Do0 f55 statusErrorCode ivy:error:rest:client #txt
Do0 f55 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Get Dialog
Linked Expr</name>
    </language>
</elementInfo>
' #txt
Do0 f55 1464 594 112 44 -35 -15 #rect
Do0 f56 1520 558 1520 594 #arcP
Do0 f48 1576 616 1535 432 #arcP
Do0 f48 1 1616 616 #addKink
Do0 f48 2 1616 432 #addKink
Do0 f48 1 0.6319444444444444 0 0 #arcLabel
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
Do0 f19 mainOut f22 tail #connect
Do0 f22 head f21 mainIn #connect
Do0 f21 mainOut f29 tail #connect
Do0 f29 head f28 mainIn #connect
Do0 f28 mainOut f24 tail #connect
Do0 f24 head f23 mainIn #connect
Do0 f23 mainOut f26 tail #connect
Do0 f26 head f25 mainIn #connect
Do0 f27 mainOut f16 tail #connect
Do0 f16 head f23 mainIn #connect
Do0 f25 mainOut f32 tail #connect
Do0 f32 head f31 mainIn #connect
Do0 f31 mainOut f34 tail #connect
Do0 f34 head f33 mainIn #connect
Do0 f33 mainOut f36 tail #connect
Do0 f36 head f35 mainIn #connect
Do0 f38 mainOut f39 tail #connect
Do0 f39 head f37 mainIn #connect
Do0 f37 mainOut f40 tail #connect
Do0 f40 head f31 mainIn #connect
Do0 f35 mainOut f42 tail #connect
Do0 f42 head f41 mainIn #connect
Do0 f45 mainOut f46 tail #connect
Do0 f46 head f44 mainIn #connect
Do0 f44 mainOut f47 tail #connect
Do0 f47 head f43 mainIn #connect
Do0 f43 mainOut f50 tail #connect
Do0 f50 head f49 mainIn #connect
Do0 f41 mainOut f51 tail #connect
Do0 f51 head f49 mainIn #connect
Do0 f49 mainOut f52 tail #connect
Do0 f52 head f30 mainIn #connect
Do0 f30 mainOut f54 tail #connect
Do0 f54 head f53 mainIn #connect
Do0 f53 mainOut f56 tail #connect
Do0 f56 head f55 mainIn #connect
Do0 f55 mainOut f48 tail #connect
Do0 f48 head f15 mainIn #connect
