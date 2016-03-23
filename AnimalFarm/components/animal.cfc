<cfcomponent displayname="animal" hint="ColdFusion animal wool and milk collector" implements="CFIDE.LocalCF.AnimalFarm.interface.animal">

<!--- 
		Age variable set between 0 and 1 
		0 = Young
		1 = Old
--->
<cfset variables.Age = randRange(0,1) />


<!--- 
		Color variable set between 0 and 1 
		0 = White
		1 = Black
--->
<cfset variables.Color = randRange(0,1) />


<!--- 
		Species variable set between 0 and 1 
		0 = Sheep
		1 = Cow
--->
<cfset variables.Species = randRange(0,1) />




<cffunction name="getSpecies">
	<cfif variables.Color EQ 0>
		<cfreturn "sheep">
	<cfelse>
		<cfreturn "cow">
	</cfif>
</cffunction>


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
	<cfargument name="species">

	<cfif arguments.species EQ "sheep">
		<cfif arguments.age EQ "Old">
			<cfset blackWoolNo = blackWoolNo + 1 />
			<cfreturn blackWoolNo />
		<cfelse>
			<cfreturn blackWoolNo />
		</cfif>
	<cfelse>
		<cfreturn blackWoolNo />
	</cfif>

</cffunction>



<cffunction name="collectWhiteWool">
	<cfargument name="WhiteWoolNo">
	<cfargument name="age">
	<cfargument name="species">

	<cfif arguments.species EQ "sheep">
		<cfif arguments.age EQ "Old">
			<cfset WhiteWoolNo = WhiteWoolNo + 1 />
			<cfreturn WhiteWoolNo />
		<cfelse>
			<cfreturn WhiteWoolNo />
		</cfif>
	<cfelse>
		<cfreturn WhiteWoolNo />
	</cfif>

</cffunction>

<cffunction name="collectMilk">
	<cfargument name="age">
	<cfargument name="MilkCollected">
	<cfargument name="species">

	<cfset milkAmmount = randRange(0,3)/>

	<cfif arguments.age EQ "Young">
		<cfset MilkCollected = MilkCollected + milkAmmount />
		<cfreturn MilkCollected />
	<cfelse>
		<cfreturn MilkCollected />
	</cfif>
</cffunction>



</cfcomponent>