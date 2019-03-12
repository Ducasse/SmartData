Class {
	#name : #SMDSource,
	#superclass : #Object,
	#classVars : [
		'IdSeed'
	],
	#category : #SmartData
}

{ #category : #'class initialization' }
SMDSource class >> initialize [ 

	IdSeed := Random new.
]

{ #category : #creation }
SMDSource >> createObject [
	
	^ SMDPart new 
		setOrigin: self;
		yourself
	
]

{ #category : #creation }
SMDSource >> newId [

	^ (IdSeed nextInt: 1000000000) asString
]
