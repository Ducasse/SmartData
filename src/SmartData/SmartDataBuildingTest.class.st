Class {
	#name : #SmartDataBuildingTest,
	#superclass : #TestCase,
	#category : #SmartData
}

{ #category : #tests }
SmartDataBuildingTest >> testAddAPartFromAnotherClassKeepOrigin [

	| cSource pSource cTarget |
	cSource := SMDClass new. 
	pSource := SMDPart new.
	cSource addPart: pSource.
	self assert: (cSource hasPart: pSource).
	
	cTarget := SMDClass new.
	cTarget addPart: (cSource partNamed: pSource id).
	self assert: (cSource hasPart: pSource).
	
	"question who is responsible to define what is an origin?"
	
	self assert: (cSource partNamed: pSource id) origin equals: cSource

]

{ #category : #tests }
SmartDataBuildingTest >> testCreateAClassAndAddAPart [

	| c f |
	c := SMDClass new. 
	f := SMDPart new.
	c addPart: f.
	self assert: (c hasPart: f)
]