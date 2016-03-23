<cfoutput>

	<cfset animalNo = randRange(1,10)/>
	<cfset blackWoolNo = 0 />
	<cfset WhiteWoolNo = 0 />
	<cfset sheepMilkCollected = 0 />
	<cfset cowMilkCollected = 0 />

	We have <cfdump var="#animalNo#"> animals; <br>
	<br>
	<cfloop from="1" to="#animalNo#" index="i">

		<cfset animal[i] = createObject("component", "CFIDE.LocalCF.AnimalFarm.components.animal") />
		<cfset age = animal[i].getAge() />
		<cfset species = animal[i].getSpecies() />

		Animal no.#i# is #species#; <cfif species NEQ "cow">
											 <cfif age EQ 'Old'> #age# animal will be sheared <cfelse> This animal is not ready to be sheared. </cfif>
									<cfelse>
										Animal will not be sheared.
									 </cfif><br>

		<cfif animal[i].getColor() EQ 'Black'>
			<cfset blackWoolNo = animal[i].collectBlackWool(blackWoolNo, age, species) />
		<cfelse>
			<cfset WhiteWoolNo = animal[i].collectWhiteWool(WhiteWoolNo, age, species) />
		</cfif>

		<cfif species EQ "cow">
			<cfset cowMilkCollected = animal[i].collectMilk(age, cowMilkCollected) />
		<cfelse>
			<cfset sheepMilkCollected = animal[i].collectMilk(age, sheepMilkCollected) />
		</cfif>

	</cfloop>
	<br>
	#blackWoolNo# black sheep sheared.<br>
	#whiteWoolNo# white sheep sheared.<br>
	#sheepMilkCollected#L sheep milk<br>
	#cowMilkCollected#L cow milk

</cfoutput>
