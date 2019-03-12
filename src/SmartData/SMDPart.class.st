Class {
	#name : #SMDPart,
	#superclass : #Object,
	#instVars : [
		'id',
		'parts',
		'origin'
	],
	#classInstVars : [
		'idCounter'
	],
	#category : #SmartData
}

{ #category : #'instance creation' }
SMDPart class >> initialize [
	"self initialize"
	
	self resetCounter
]

{ #category : #'instance creation' }
SMDPart class >> new [

	^ super new 
		setId: self newId;
		yourself
]

{ #category : #'instance creation' }
SMDPart class >> newId [

	idCounter := idCounter + 1.
	^ idCounter
]

{ #category : #'instance creation' }
SMDPart class >> resetCounter [

	idCounter := 0
]

{ #category : #adding }
SMDPart >> addPart: aPart [

	parts at: aPart id put: aPart
]

{ #category : #testing }
SMDPart >> hasPart: aSMDPart [
	^ parts includes: aSMDPart
]

{ #category : #accessing }
SMDPart >> id [
	"an id is a unique identifier of the part."
	
	^ id 
]

{ #category : #initialization }
SMDPart >> initialize [

	super initialize. 
	parts := Dictionary new
]

{ #category : #accessing }
SMDPart >> origin [
	^ origin
]

{ #category : #private }
SMDPart >> setId: aString [ 
	id := aString
]

{ #category : #private }
SMDPart >> setOrigin: anObject [ 
	origin := anObject
]
