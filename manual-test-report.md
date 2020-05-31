# Manual test report

All tests were performed on https://form.jotform.com/200843963230350 site.

Date: 31.05.2020


|        Error ID        |Description                          |Priority/Severity                         |
|----------------|-------------------------------|-----------------------------|
|T-001|It is possible to upload malware via upload page, lack of file scanning.|High/Critical|
|T-002|Lack of header with name of page on file upload page.|Medium/Low|
|T-003|You can go through File Upload page without uploading any file. I am not sure if it is not correct behavior.(lack of documentation) |High/High(or None/None depends on requirements)|
|T-004|Lack of pattern verification in Area Code field on Phone Number page, you can send there letters without numbers. It is also possible to try to perform some XSS(<script>alert(1)</script> is accepted).|High/High(or Critical if there is also possibility to execute XSS in other associated systems)|
|T-005|Lack of pattern verification in Phone Number field on Phone Number page, you can send there letters without numbers. It is also possible to try to perform some XSS(<script>alert(1)</script> is accepted).|High/High(or Critical if there is also possibility to execute XSS in other associated systems)|
|T-006|You can go through Security Question page without filling anything. I am not sure if it is not correct behavior.(lack of documentation) |High/High(or None/None depends on requirements)|
|T-007|On Security Question page first option of dropdown(with index 0) is blank and it is possible to select it.|High/Medium|
|T-008|Lack of data verification in Security Answer field on Security Question page, it is possible to try to perform some XSS(<script>alert(1)</script> is accepted).|Low/Low(or High/Critical if there is also possibility to execute XSS on other associated systems)|
|T-009|If you take off focus from e-mail field, placeholder will be interpreted as Your e-mail and form can be submitted with it.|Medium/Medium|
