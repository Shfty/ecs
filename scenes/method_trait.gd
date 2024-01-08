class_name MethodTrait
extends TraitObject

var method: String

func _name() -> String:
	return "MethodTrait"

func _is_implementor(node: Node) -> bool:
	return node.has_method(method)

func call_method():
	return get_node().call(method)
