Class {
	#name : #'IngSoft2_Repository_Test',
	#superclass : #TestCase,
	#category : #'IngSoft2-Tests'
}

{ #category : #tests }
IngSoft2_Repository_Test >> testIngSoft2_Repository_Test_ModelClassesAreLoaded [

	self assert: IngSoft2_Repository name equals: 'IngSoft2_Repository'
]

{ #category : #tests }
IngSoft2_Repository_Test >> testIngSoft2_Repository_Test_testsRuns [

	self assert: true
]
