class_name PropertyTrait
extends TraitObject

var property: String

func _name() -> String:
	return "PropertyTrait"

func _is_implementor(node: Node) -> bool:
	return node.has_property(property)

func get_property():
	return get_node().get(property)

func set_property(new_value) -> void:
	 get_node().set(property, new_value)
