<cfcomponent displayname="Sheep" hint="ColdFusion sheep wool collector">

<!--- 
		Age variable set between 0 and 1 
		0 = Young sheep
		1 = Old sheep
--->
<cfset variables.Age = randRange(0,1) />


<!--- 
		Color variable set between 0 and 1 
		0 = White sheep
		1 = Black sheep
--->
<cfset variables.Color = randRange(0,1) />



<cffunction name="getColor">
	<cfif variables.Color EQ 0>
		<cfreturn "White">
	<cfelse>
		<cfreturn "Black">
	</cfif>
</cffunction>



<cffunction name="getAge">
	<cfif variables.Age EQ 0>
		<cfreturn "Young">
	<cfelse>
		<cfreturn "Old">
	</cfif>
</cffunction>




<cffunction name="collectBlackWool">
	<cfargument name="blackWoolNo">
	<cfargument name="age">

	<cfif arguments.age EQ "Old">
		<cfset blackWoolNo = blackWoolNo + 1 />
		<cfreturn blackWoolNo />
	<cfelse>
		<cfreturn blackWoolNo />
	</cfif>

</cffunction>



<cffunction name="collectWhiteWool">
	<cfargument name="WhiteWoolNo">
	<cfargument name="age">

	<cfif arguments.age EQ "Old">
		<cfset WhiteWoolNo = WhiteWoolNo + 1 />
		<cfreturn WhiteWoolNo />
	<cfelse>
		<cfreturn WhiteWoolNo />
	</cfif>

</cffunction>



</cfcomponent>