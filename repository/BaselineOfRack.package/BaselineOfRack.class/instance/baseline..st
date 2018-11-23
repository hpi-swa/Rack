baseline
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec package: 'IconsBase' with: [
				spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'].	
			
			spec 
				package: 'Rack-Core';
				package: 'Rack-Compatibility50';
				package: 'Rack-UI' with: [
					spec requires: #('Rack-Core' 'IconsBase').
					(#('Squeak5.0' 'Squeak5.1') includes: Smalltalk version)
						ifTrue: [spec requires: #('Rack-Core' 'IconsBase' 'Rack-Compatibility50')]];
				package: 'Rack-Tests' with: [spec requires: #('Rack-Core')].
			
			spec
				group: 'default' with: #('Rack-UI');
				group: 'tests' with: #('Rack-Tests' 'default');
				yourself]