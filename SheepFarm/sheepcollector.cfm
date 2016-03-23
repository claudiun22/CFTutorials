<cfoutput>

	<cfset sheepNr = randRange(1,10)/>
	<cfset blackWoolNo = 0 />
	<cfset WhiteWoolNo = 0 />

	We have <cfdump var="#sheepNr#"> sheep; <br>
	<br>
	<cfloop from="1" to="#sheepNr#" index="i">

		<cfset sheep[i] = createObject("component", "CFIDE.LocalCF.SheepFarm.components.sheep") />
		<cfset age = sheep[i].getAge() />

		Sheep no.#i#; <cfif age EQ 'Old'> #age# sheep will be sheared <cfelse> This sheep is not ready to be sheared. </cfif> <br>

		<cfif sheep[i].getColor() EQ 'Black'>
			<cfset blackWoolNo = sheep[i].collectBlackWool(blackWoolNo, age) />
		<cfelse>
			<cfset WhiteWoolNo = sheep[i].collectWhiteWool(WhiteWoolNo, age) />
		</cfif>

	</cfloop>
	<br>
	#blackWoolNo# black sheep sheared.<br>
	#whiteWoolNo# white sheep sheared.

</cfoutput>
