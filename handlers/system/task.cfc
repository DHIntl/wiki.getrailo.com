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
<cfcomponent name="task"
			 extends="codex.handlers.baseHandler"
			 output="false"
			 hint="runs scheduled tasks"
			 autowire="true"
			 cache="true" 
			 cacheTimeout="0">

	<!--- Dependencies --->
	<cfproperty name="SearchEngine" type="ioc" scope="instance">
	
<!------------------------------------------- PUBLIC ------------------------------------------->

	<cffunction name="refreshSearch" hint="refreshes the search index" access="public" returntype="void" output="false">
		<cfargument name="event" type="any">
		<cfscript>
			instance.SearchEngine.refreshSearch();
	
			arguments.event.noRender();
		</cfscript>
	</cffunction>
	
<!------------------------------------------- PACKAGE ------------------------------------------->
	
<!------------------------------------------- PRIVATE ------------------------------------------->


</cfcomponent>