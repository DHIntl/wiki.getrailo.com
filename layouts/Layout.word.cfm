<!-----------------------------------------------------------------------
********************************************************************************
Copyright 2008 by 
Luis Majano (Ortus Solutions, Corp) and Mark Mandel (Compound Theory)
www.transfer-orm.org |  www.coldboxframework.com
********************************************************************************
Licensed under the Apache License, Version 2.0 (the "License"); 
you may not use this file except in compliance with the License. 
You may obtain a copy of the License at 
    		
	http://www.apache.org/licenses/LICENSE-2.0 

Unless required by applicable law or agreed to in writing, software 
distributed under the License is distributed on an "AS IS" BASIS, 
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. 
See the License for the specific language governing permissions and 
limitations under the License.
********************************************************************************
$Build Date: @@build_date@@
$Build ID:	@@build_id@@
********************************************************************************
----------------------------------------------------------------------->
<cfif event.valueExists("content") >
	<cfset fileTitle = rc.content.getPage().getFileSafeName()>
<cfelse>
	<cfset fileTitle = "webprint">
</cfif>
<cfheader name="Content-Type" 		 value="application/msword">
<cfheader name="Content-Disposition" value="inline; filename=#fileTitle#.doc"> 
<cfoutput>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://
www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
</head>
<body style="background: none;">
       <!--- Render Custom HTML --->
       #rc.oCustomHTML.getafterBodyStart()#
       <div>
               #renderView()#
       </div>
       <!--- Render Custom HTML --->
       #rc.oCustomHTML.getbeforeBodyEnd()#
</body>
</html>
</cfoutput>