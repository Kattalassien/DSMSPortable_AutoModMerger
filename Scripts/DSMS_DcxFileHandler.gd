extends Node
class_name DSMS_DcxFileHandler

var yabber_path : String = "path/to/Yabber.exe"  # Update with the correct path
var mod_load_order : Array = []
var dcx_files : Dictionary = {}

func _ready():
    # This function can be used to initialize the script
    pass

func process_dcx_files(mod_folders : Array) -> void:
    for mod_folder in mod_folders:
        var found_dcx_files = find_dcx_files_in_folder(mod_folder)
        dcx_files[mod_folder] = found_dcx_files
        for dcx_file in found_dcx_files:
            decompress_dcx(dcx_file)
            # Add logic for merging content if needed
            recompress_dcx(dcx_file)
    # Implement logic to handle merging based on load order

func find_dcx_files_in_folder(folder_path : String) -> Array:
    var dcx_files_in_folder = []
    # Logic to find and list .dcx files in the given folder
    return dcx_files_in_folder

func decompress_dcx(file_path : String) -> void:
    # Logic to decompress .dcx files using Yabber
    pass

func recompress_dcx(file_path : String) -> void:
    # Logic to recompress files into .dcx format using Yabber
    pass

# You can add more functions for specific handling like conflict resolution, etc.
