extends Node3D

func _prendre():
	if InventoryManager.ring_spd_slv == false:
		InventoryManager.ring_spd_slv = true
		Manager.iring5 = true
		Manager.iiring5 = true
		$audio_pick.play()
		$Timer.start()
		self.remove_from_group("prehensible")
		$interaction_area.remove_from_group("prehensible")
		$interaction_area/interaction_form.remove_from_group("prehensible")
		$"Anneau de vitesse en argent".remove_from_group("prehensible")
		$"Anneau de vitesse en argent/body_collision2".remove_from_group("prehensible")

func _on_timer_timeout() -> void:
	queue_free()
