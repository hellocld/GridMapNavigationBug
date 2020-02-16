extends Navigation

func _ready():
	var start = get_closest_point(Vector3(1, 0, 0))
	var end = get_closest_point(Vector3(-1, 0, 0))
	var path = get_simple_path(start, end)
	var array_path = Array(path)
	print("Start: %s | End: %s | Path: %s" % [start, end, array_path])
	print("Deferring...")
	call_deferred("_path_deferred")

func _path_deferred():
	var start = get_closest_point(Vector3(1, 0, 0))
	var end = get_closest_point(Vector3(-1, 0, 0))
	var path = get_simple_path(start, end)
	var array_path = Array(path)
	print("Start: %s | End: %s | Path: %s" % [start, end, array_path])
