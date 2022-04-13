Class {
	#name : #RandomDie,
	#superclass : #Object,
	#instVars : [
		'numberOfSides'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
RandomDie class >> assertValid: numberOfSides [

	numberOfSides < 3 ifTrue: [ 
		Error signal: 'Number of faces should be greater than 2' ]
]

{ #category : #'instance creation' }
RandomDie class >> with: numberOfSides [

	self assertValid: numberOfSides.
	^self new initializeWith: numberOfSides
]

{ #category : #initialization }
RandomDie >> initializeWith: aNumberOfSides [

 	numberOfSides := aNumberOfSides
]

{ #category : #rolling }
RandomDie >> roll [

	^numberOfSides atRandom
]
