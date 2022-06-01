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
>Proto Do0 .type com.axonivy.market.docuware.connector.demo.Data #txt
>Proto Do0 .processKind NORMAL #txt
>Proto Do0 0 0 32 24 18 0 #rect
>Proto Do0 @|BIcon #fIcon
Do0 f0 mainOut f4 tail #connect
Do0 f4 head f3 mainIn #connect
Do0 f3 mainOut f2 tail #connect
Do0 f2 head f1 mainIn #connect
