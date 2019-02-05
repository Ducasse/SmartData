Class {
	#name : #SmartDataBuilding,
	#superclass : #TestCase,
	#category : #SmartData
}

{ #category : #tests }
SmartDataBuilding >> testAddAPartFromAnotherClassKeepOrigin [

	| cSource pSource cTarget |
	cSource := SMDClass new. 
	pSource := SMDPart new.
	cSource addPart: pSource.
	self assert: (cSource hasPart: pSource).
	
	cTarget := SMDClass new.
	cTarget addPart: (cSource partNamed: pSource id).
	self assert: (cSource hasPart: pSource).
	
	self assert: (cSource partNamed: pSource id) origin equals: cSource

]

{ #category : #tests }
SmartDataBuilding >> testCreateAClassAndAddAPart [

	| c f |
	c := SMDClass new. 
	f := SMDPart new.
	c addPart: f.
	self assert: (c hasPart: f)
]
