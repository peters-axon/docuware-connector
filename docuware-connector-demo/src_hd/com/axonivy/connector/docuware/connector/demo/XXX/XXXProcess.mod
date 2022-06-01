[Ivy]
1811FEE1F076C2C7 9.3.1 #module
>Proto >Proto Collection #zClass
Xs0 XXXProcess Big #zClass
Xs0 RD #cInfo
Xs0 #process
Xs0 @AnnotationInP-0n ai ai #zField
Xs0 @TextInP .type .type #zField
Xs0 @TextInP .processKind .processKind #zField
Xs0 @TextInP .xml .xml #zField
Xs0 @TextInP .responsibility .responsibility #zField
Xs0 @UdInit f0 '' #zField
Xs0 @UdProcessEnd f1 '' #zField
Xs0 @PushWFArc f2 '' #zField
Xs0 @UdEvent f3 '' #zField
Xs0 @UdExitEnd f4 '' #zField
Xs0 @PushWFArc f5 '' #zField
>Proto Xs0 Xs0 XXXProcess #zField
Xs0 f0 guid 1811FEE1F0AAB2FE #txt
Xs0 f0 method start() #txt
Xs0 f0 inParameterDecl '<> param;' #txt
Xs0 f0 outParameterDecl '<> result;' #txt
Xs0 f0 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>start()</name>
    </language>
</elementInfo>
' #txt
Xs0 f0 83 51 26 26 -16 15 #rect
Xs0 f1 211 51 26 26 0 12 #rect
Xs0 f2 109 64 211 64 #arcP
Xs0 f3 guid 1811FEE1F0D6432D #txt
Xs0 f3 actionTable 'out=in;
' #txt
Xs0 f3 @C|.xml '<?xml version="1.0" encoding="UTF-8" standalone="yes"?>
<elementInfo>
    <language>
        <name>close</name>
    </language>
</elementInfo>
' #txt
Xs0 f3 83 147 26 26 -15 15 #rect
Xs0 f4 211 147 26 26 0 12 #rect
Xs0 f5 109 160 211 160 #arcP
>Proto Xs0 .type com.axonivy.connector.docuware.connector.demo.XXX.XXXData #txt
>Proto Xs0 .processKind HTML_DIALOG #txt
>Proto Xs0 -8 -8 16 16 16 26 #rect
Xs0 f0 mainOut f2 tail #connect
Xs0 f2 head f1 mainIn #connect
Xs0 f3 mainOut f5 tail #connect
Xs0 f5 head f4 mainIn #connect
