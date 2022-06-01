[Ivy]
1811FCF74A58FA0C 9.3.1 #module
>Proto >Proto Collection #zClass
Ds0 DocuWareDemoProcess Big #zClass
Ds0 RD #cInfo
Ds0 #process
Ds0 @AnnotationInP-0n ai ai #zField
Ds0 @TextInP .type .type #zField
Ds0 @TextInP .processKind .processKind #zField
Ds0 @TextInP .xml .xml #zField
Ds0 @TextInP .responsibility .responsibility #zField
Ds0 @UdInit f0 '' #zField
Ds0 @UdProcessEnd f1 '' #zField
Ds0 @PushWFArc f2 '' #zField
Ds0 @UdEvent f3 '' #zField
Ds0 @UdExitEnd f4 '' #zField
Ds0 @PushWFArc f5 '' #zField
Ds0 @UdEvent f6 '' #zField
Ds0 @UdProcessEnd f7 '' #zField
Ds0 @UdEvent f9 '' #zField
Ds0 @UdProcessEnd f10 '' #zField
Ds0 @UdEvent f12 '' #zField
Ds0 @UdProcessEnd f13 '' #zField
Ds0 @RestClientCall f15 '' #zField
Ds0 @PushWFArc f16 '' #zField
Ds0 @PushWFArc f8 '' #zField
Ds0 @RestClientCall f17 '' #zField
Ds0 @PushWFArc f18 '' #zField
Ds0 @PushWFArc f11 '' #zField
Ds0 @RestClientCall f19 '' #zField
Ds0 @PushWFArc f20 '' #zField
Ds0 @PushWFArc f23 '' #zField
>Proto Ds0 Ds0 DocuWareDemoProcess #zField
Ds0 f0 guid 1811FCF74DD97A8C #txt
Ds0 f0 method start() #txt
Ds0 f0 inParameterDecl '<> param;' #txt
Ds0 f0 outParameterDecl '<> result;' #txt
Ds0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Ds0 f0 83 51 26 26 -16 15 #rect
Ds0 f1 211 51 26 26 0 12 #rect
Ds0 f2 109 64 211 64 #arcP
Ds0 f3 guid 1811FCF74F1641A6 #txt
Ds0 f3 actionTable 'out=in;
' #txt
Ds0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Ds0 f3 83 147 26 26 -15 15 #rect
Ds0 f4 211 147 26 26 0 12 #rect
Ds0 f5 109 160 211 160 #arcP
Ds0 f6 guid 1811FD1597CC29F8 #txt
Ds0 f6 actionTable 'out=in;
' #txt
Ds0 f6 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>organizations</name>
    </language>
</elementInfo>
' #txt
Ds0 f6 83 243 26 26 -37 15 #rect
Ds0 f7 339 243 26 26 0 12 #rect
Ds0 f9 guid 1811FD18D28C46E4 #txt
Ds0 f9 actionTable 'out=in;
' #txt
Ds0 f9 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileCabinets</name>
    </language>
</elementInfo>
' #txt
Ds0 f9 83 339 26 26 -33 15 #rect
Ds0 f10 339 339 26 26 0 12 #rect
Ds0 f12 guid 1811FD1B89771D1F #txt
Ds0 f12 actionTable 'out=in;
' #txt
Ds0 f12 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>fileUpload</name>
    </language>
</elementInfo>
' #txt
Ds0 f12 83 435 26 26 -28 15 #rect
Ds0 f13 339 435 26 26 0 12 #rect
Ds0 f15 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Ds0 f15 path /Organizations #txt
Ds0 f15 headers 'Accept=application/json;
' #txt
Ds0 f15 resultType com.axonivy.connector.docuware.connector.model.OrganizationContainer #txt
Ds0 f15 responseCode 'import com.axonivy.connector.docuware.connector.demo.DocuWareDemoService;

out.result = DocuWareDemoService.get().getLog(response, result);
' #txt
Ds0 f15 clientErrorCode ivy:error:rest:client #txt
Ds0 f15 statusErrorCode ivy:error:rest:client #txt
Ds0 f15 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Organizations</name>
    </language>
</elementInfo>
' #txt
Ds0 f15 168 234 112 44 -38 -8 #rect
Ds0 f16 109 256 168 256 #arcP
Ds0 f8 280 256 339 256 #arcP
Ds0 f17 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Ds0 f17 path /FileCabinets #txt
Ds0 f17 headers 'Accept=application/json;
' #txt
Ds0 f17 resultType com.axonivy.connector.docuware.connector.model.FileCabinetContainer #txt
Ds0 f17 responseCode 'import com.axonivy.connector.docuware.connector.demo.DocuWareDemoService;

out.result = DocuWareDemoService.get().getLog(response, result);
' #txt
Ds0 f17 clientErrorCode ivy:error:rest:client #txt
Ds0 f17 statusErrorCode ivy:error:rest:client #txt
Ds0 f17 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>File Cabinets</name>
    </language>
</elementInfo>
' #txt
Ds0 f17 168 330 112 44 -36 -8 #rect
Ds0 f18 109 352 168 352 #arcP
Ds0 f11 280 352 339 352 #arcP
Ds0 f19 clientId 02d1eec1-32e9-4316-afc3-793448486203 #txt
Ds0 f19 path /FileCabinets/{fileCabinetId}/Documents #txt
Ds0 f19 templateParams 'fileCabinetId=in.fileCabinetId;
' #txt
Ds0 f19 headers 'Accept=application/json;
' #txt
Ds0 f19 method POST #txt
Ds0 f19 bodyInputType FORM #txt
Ds0 f19 bodyMediaType multipart/form-data #txt
Ds0 f19 bodyForm 'file=in.file.getJavaFile();
' #txt
Ds0 f19 bodyObjectType com.axonivy.connector.docuware.connector.model.FileCabinetIdDocumentsBody #txt
Ds0 f19 resultType com.axonivy.connector.docuware.connector.model.Document #txt
Ds0 f19 responseMapping 'out.documentId=result.id;
' #txt
Ds0 f19 responseCode 'import com.axonivy.connector.docuware.connector.demo.DocuWareDemoService;

out.result = DocuWareDemoService.get().getLog(response, result);
' #txt
Ds0 f19 clientErrorCode ivy:error:rest:client #txt
Ds0 f19 statusErrorCode ivy:error:rest:client #txt
Ds0 f19 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>Document Upload</name>
    </language>
</elementInfo>
' #txt
Ds0 f19 168 426 112 44 -50 -8 #rect
Ds0 f20 109 448 168 448 #arcP
Ds0 f23 280 448 339 448 #arcP
>Proto Ds0 .type com.axonivy.connector.docuware.connector.demo.DocuWareDemo.DocuWareDemoData #txt
>Proto Ds0 .processKind HTML_DIALOG #txt
>Proto Ds0 -8 -8 16 16 16 26 #rect
Ds0 f0 mainOut f2 tail #connect
Ds0 f2 head f1 mainIn #connect
Ds0 f3 mainOut f5 tail #connect
Ds0 f5 head f4 mainIn #connect
Ds0 f6 mainOut f16 tail #connect
Ds0 f16 head f15 mainIn #connect
Ds0 f15 mainOut f8 tail #connect
Ds0 f8 head f7 mainIn #connect
Ds0 f9 mainOut f18 tail #connect
Ds0 f18 head f17 mainIn #connect
Ds0 f17 mainOut f11 tail #connect
Ds0 f11 head f10 mainIn #connect
Ds0 f12 mainOut f20 tail #connect
Ds0 f20 head f19 mainIn #connect
Ds0 f19 mainOut f23 tail #connect
Ds0 f23 head f13 mainIn #connect
