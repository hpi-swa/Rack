as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec package: 'IconsBase' with: [
				spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'].	
			
			spec 
				package: 'Rack-Core';
				package: 'Rack-UI' with: [spec requires: #('Rack-Core' 'IconsBase')];
				package: 'Rack-Tests' with: [spec requires: #('Rack-Core')].
			
			spec
				group: 'default' with: #('Rack-UI');
				group: 'tests' with: #('Rack-Tests' 'default');
				yourself]