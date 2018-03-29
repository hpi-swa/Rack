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
				package: 'Rack-UI';
				package: 'Rack-Tests'.
			
			spec
				group: 'default' with: #('core' 'ui' 'tests');
				group: 'core' with: #('Rack-Core');
				group: 'ui' with: #('IconsBase' 'Rack-UI');
				group: 'tests' with: #('core' 'Rack-Tests');
				group: 'libraries' with: #('JSON' 'VB-Regex')];
				yourself