Class {
	#name : #SMDClass,
	#superclass : #Object,
	#instVars : [
		'parts'
	],
	#category : #SmartData
}

{ #category : #adding }
SMDClass >> addPart: aSMDPart [ 
	parts add: aSMDPart 
]

{ #category : #testing }
SMDClass >> hasPart: aSMDPart [
	^ parts includes: aSMDPart
]

{ #category : #initialization }
SMDClass >> initialize [ 
	
	super initialize.
	parts := OrderedCollection new
]

{ #category : #'accessing parts' }
SMDClass >> partNamed: anId [ 
	
	^ parts at: anId ifAbsent: [ self error: 'No part named ', anId printString ]
]
