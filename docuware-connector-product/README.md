# DocuWare Connector

[DocuWare](https://start.docuware.com/) offers cloud-based document management and workflow automation software. It can be used to digitize, archive and process any business documents in an audit-proof manner to optimize your company's core processes.

The Axon Ivy DocuWare connector enables efficient integration of DocuWare functionalities into your Axon Ivy process applications

This connector:

- minimizes your integration effort: use the demo to see examples of API calls.
- is based on REST web service technologies.
- gives you access to the DocuWare REST API.

## Demo

The demo offers a GUI to guide you through some basic DocuWare features, a GUI to retrieve a list of documents from your default organization and the first file cabinet found and some workflows with examples of other calls.

### Basic Docuware Features

Start **Basic DocuWare Calls** and either configure a fixed organization and file cabinet in global variables or **Fetch Organizations** and **Fetch FileCabinets** to use the first objects found instead.
Once you select a file cabinet id, additional functions to **Fetch Documents** will be available. The first document found will be used as the demo document. Nevertheless, you
can enter ids manually for all input fields to use different objects. Once a document id is set, the document can be downloaded or attached to the current case. If you upload
a document, it's documentId will be set automatically and you can directly work with it.

### Document Viewing

Start **View/Edit Document** to get basic viewer showing how to add, change, view and delete documents. Note, that viewing of documents might require additional setup of your DocuWare installation to allow embedding
of DocuWare frames into your AxonIvy frames.

   ![view-document](images/view-document.png)

**Document Properties Editing**  
Modify document properties, including metadata and custom fields.

   ![edit-document-properties](images/edit-document-properties.png)

**Document Deletion**  
Delete documents from the file cabinet.

   ![delete-document](images/delete-document.png)

### Other demos

Other process starts show examples of DocuWare usage.

## Setup

Before any interactions between the Axon Ivy Engine and DocuWare services can be run, they have to be introducted to each other. This can be done as follows:

1. Get a DocuWare account and the DocuWare cloud `host`, `user-name`, and `password` to use.

2. Override the global variables for `host`, `username`, and `password` in the demo project as shown in the example below.

```
@variables.yaml@
```

3. DocuWare supports 3 ways to generate an Access Token from the Identity Service:

    3.a Request Token by Username & Password - GrantType is `password`
    
    3.b Request Token by a DocuWare Token - GrantType is `dwtoken`
    
    3.c Request Token by Username & Password (Trusted User) - GrantType is `trusted`

4. For GrantType is `dwtoken`, we must get a LoginToken. Please start the process startRequestALoginToken.ivp and follow the guide to generate a new LoginToken

If your REST URL does not follow the predefined REST URL pattern of this connector, you can change the URL in the Engine Cockpit. To change the URL in the Designer, you have to unpack the connector project and change it there.

Run `start.ivp` of the DocuWareDemo demo process to test your setup.

