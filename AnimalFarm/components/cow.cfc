<cfcomponent displayname="animal" hint="ColdFusion animal wool and milk collector">

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


<cffunction name="collectMilk">
	<cfargument name="age">
	<cfargument name="cowMilkCollected">

	<cfset milkAmmount = randRange(0,3)/>

	<cfif arguments.age EQ "Young">
		<cfset cowMilkCollected = cowMilkCollected + milkAmmount />
		<cfreturn cowMilkCollected />
	<cfelse>
		<cfreturn cowMilkCollected />
	</cfif>
</cffunction>



</cfcomponent>