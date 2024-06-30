extends Control


@onready var volume_slider: HSlider = $VBoxContainer/HBoxContainer/VolumeSlider


func _on_regal_pressed():
	$MusicPlayer.load_track("Regal")


func _on_hell_pressed():
	$MusicPlayer.load_track("Hell")


func _on_volume_slider_drag_ended(value_changed):
	if value_changed:
		$MusicPlayer.set_volume(volume_slider.value)
		pass