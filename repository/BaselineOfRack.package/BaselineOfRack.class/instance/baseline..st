as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec 
				package: 'Rack-Core';
				package: 'Rack-UI';
				package: 'Rack-Tests'.
			
			spec package: 'Icons' with: [
				spec repository: 'http://www.hpi.uni-potsdam.de/hirschfeld/squeaksource/SwaUtilities'].	
			
			spec
				group: 'default' with: #('core' 'ui' 'tests');
				group: 'core' with: #('Rack-Core');
				group: 'ui' with: #('Rack-UI' 'Icons');
				group: 'tests' with: #('core' 'Rack-Tests');
				group: 'libraries' with: #('JSON' 'VB-Regex')];
				yourself