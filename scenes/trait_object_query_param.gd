class_name QueryParam
extends Node

enum Mode {
	Concrete,
	Optional,
	None
}

var trait
var mode: int = Mode.Concrete

func _init(in_trait, in_mode: int) -> void:
	trait = in_trait
	mode = in_mode

func is_valid(trait: TraitObject) -> bool:
	match mode:
		Mode.Concrete:
			return trait != null
		Mode.Optional:
			return true
		Mode.None:
			return trait == null

	return false
