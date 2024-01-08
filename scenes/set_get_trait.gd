class_name SetGetTrait
extends TraitObject

var getter: String
var setter: String

func _name() -> String:
	return "SetGetTrait"

func _is_implementor(node: Node) -> bool:
	return node.has_method(getter) and node.has_method(setter)

func get_property():
	return get_node().call(getter)

func set_property(new_value) -> void:
	 get_node().call(setter, new_value)
