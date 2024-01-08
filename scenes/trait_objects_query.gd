class_name TraitObjectQuery

var params: Array

func _init(in_params: Array) -> void:
	params = in_params

func run(tree: SceneTree) -> Dictionary:
	var nodes = get_nodes(tree.root)
	var results := {}
	for node in nodes:
		var result := {}
		var skip := false
		for param in params:
			var to = TraitObjectUtil.lift(node, param.trait)
			if param.is_valid(to):
				result[param.trait] = to
			else:
				skip = true
				break
		if not skip:
			results[node] = result
	return results

func get_nodes(node: Node) -> Array:
	var nodes := [node]
	for child in node.get_children():
		nodes += get_nodes(child)
	return nodes
