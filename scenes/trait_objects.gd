class_name TraitObject

var node_ref: WeakRef = null

func _name() -> String:
	return "TraitObject"

func _group_name() -> String:
	var re = RegEx.new()
	re.compile("(?<!^)(?=[A-Z])")
	return re.sub(_name(), '_', true).to_lower()

func _is_implementor(node: Node) -> bool:
	return false

func _to_string() -> String:
	return "[%s:%s]" % [_name(), get_instance_id()]

func get_node() -> Node:
	return node_ref.get_ref()
