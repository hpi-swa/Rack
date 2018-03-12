as yet unclassified
baseline: spec
	<baseline>
	spec
		for: #'common'
		do: [
			spec
				group: 'default' with: #('core' 'Rack-UI');
				group: 'core' with: #('Rack-Core');
				group: 'tests' with: #('core' 'Rack-Tests');
				group: 'libraries' with: #('JSON' 'VB-Regex')];
				yourself