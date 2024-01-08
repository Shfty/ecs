class_name TraitObjectUtil

static func lift(node: Node, trait: Script) -> TraitObject:
	var to = trait.new()
	if to._is_implementor(node):
		to.node_ref = weakref(node)
		return to
	return null

static func concrete(trait) -> QueryParam:
	return QueryParam.new(trait, QueryParam.Mode.Concrete)

static func optional(trait) -> QueryParam:
	return QueryParam.new(trait, QueryParam.Mode.Optional)

static func none(trait) -> QueryParam:
	return QueryParam.new(trait, QueryParam.Mode.None)
