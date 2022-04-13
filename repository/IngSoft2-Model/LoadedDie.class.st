Class {
	#name : #LoadedDie,
	#superclass : #Object,
	#instVars : [
		'result'
	],
	#category : #'IngSoft2-Model'
}

{ #category : #'instance creation' }
LoadedDie class >> assertValid: result [

	result > 0 ifFalse: [ Error signal: 'Die should be loaded with result greater than zero' ] 
]

{ #category : #'instance creation' }
LoadedDie class >> with: result [

	self assertValid: result.
	^self new initializeWith: result
]

{ #category : #initialization }
LoadedDie >> initializeWith: loadedResult [
 
	result := loadedResult
]

{ #category : #rolling }
LoadedDie >> roll [

	^result
]
