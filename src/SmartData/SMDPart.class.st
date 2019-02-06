Class {
	#name : #SMDPart,
	#superclass : #Object,
	#instVars : [
		'id',
		'parts'
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

{ #category : #accessing }
SMDPart >> id [
	"an id is a unique identifier of the part."
	
	^ id ifNil: [ id := self class newId ]
]

{ #category : #adding }
SMDPart >> initialize [

	super initialize. 
	parts := Dictionary new
]
