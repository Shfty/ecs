class_name ComponentTrait
extends TraitObject

var component

func _name() -> String:
	return "ComponentTrait"

func _is_implementor(node: Node) -> bool:
	for child in node.get_children():
		if child is component:
			return true
	return false

func get_component():
	for child in get_node().get_children():
		if child is component:
			return child
	return null
