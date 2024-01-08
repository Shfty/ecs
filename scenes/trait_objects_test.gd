class_name TraitObjectsTest
extends Node

class PositionTrait extends SetGetTrait:
	func _init() -> void:
		getter = "get_position"
		setter = "set_position"

	func _name() -> String:
		return "PositionTrait"

class MeshInstanceTrait extends ComponentTrait:
	func _init() -> void:
		component = MeshInstance

	func _name() -> String:
		return "MeshInstanceTrait"

	func set_position(new_position: Vector2) -> void:
		 get_node().set_position(new_position)

func _ready() -> void:
	var query = TraitObjectQuery.new([
		TraitObjectUtil.concrete(PositionTrait),
		TraitObjectUtil.none(MeshInstanceTrait)
	])
	var results = query.run(get_tree())
	for node in results:
		var result = results[node]
		print(result[PositionTrait])
		print(result[MeshInstanceTrait])
