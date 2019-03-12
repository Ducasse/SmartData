Class {
	#name : #SmartDataBuildingTest,
	#superclass : #TestCase,
	#category : #SmartData
}

{ #category : #tests }
SmartDataBuildingTest >> testASourceCreateObject [

	| s1 o1 p1 |
	s1 := SMDSource new.
	o1 := s1 createObject.
	
	"an object should have an id to uniquely identify it - why not"
	self assert: o1 id isNotNil.
	
	p1 := s1 createObject.
	self deny: o1 id = p1 id.
	
	o1 addPart: p1. 
	self assert: (o1 hasPart: p1)
]

{ #category : #tests }
SmartDataBuildingTest >> testASourceSetOriginOfCreatedObject [

	| s1 o1 p1 |
	s1 := SMDSource new.
	o1 := s1 createObject.
	self assert: o1 origin equals: s1.
	
	p1 := s1 createObject.
	o1 addPart: p1. 
	self assert: o1 origin equals: s1.
]

{ #category : #tests }
SmartDataBuildingTest >> testAddAPartFromAnotherObjectKeepOrigin [

	| s1 o1 p1 s2 o2 |
	s1 := SMDSource new.
	o1 := s1 createObject.	
	p1 := s1 createObject.
	o1 addPart: p1. 
	
	s2 := SMDSource new.
	o2 := s2 createObject.
	o2 addPart: p1.	
	self assert: p1 origin equals: s1.
	self assert: o2 origin equals: s2.
]
