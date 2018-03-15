A query folder is a folder that does dynamically create its contents. The content is determined by #query and processed by #postProcessing before being displayed.

The query can return an arbitrary collection of object.

The post processing block takes the query-result collection as its input and can transform it further, e.g. sort it.