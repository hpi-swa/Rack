|package zip|
package := 'Rack'.
categoryNames := #('IconsBase' 'Rack-Core' 'Rack-UI' 'Rack-Tests').
zip := ZipArchive new.
categoryNames do: [:categoryName |
mczStream := RWBinaryOrTextStream on: (String new: 10000).
workingCopy := (MCPackage named: categoryName) workingCopy.
version := workingCopy newVersionWithName: 'release' message: 'release of Rack'.
version fileOutOn: mczStream.
(zip addString: mczStream contents as: categoryName , '.mcz') desiredCompressionLevel: 0.].
installScript := (categoryNames collect: [:categoryName | 'self fileInMonticelloZipVersionNamed: ''' , categoryName , '.mcz''.'])
joinSeparatedBy: String crlf.
zip addString: installScript as: 'install/preamble'.
zip writeToFileNamed: package , '.sar'.
SmalltalkImage current snapshot: false andQuit: true.
