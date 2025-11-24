Video demo of save and load mechanic

https://youtu.be/S2eaYza1wAk

There are 3 mechanism I can think of that could work.

The first one is a JSON file storing data as text using FileAccess class on Godot. The data is converted to and from Godot using built in functions JSON.stringify() and JSON.parse_string(). The good thing about JSON files is that it is easier to read and edit manually and portable across platforms. The con is it is very easy for player to edit.

The second one is a Binary file using Godot's built in serialization store_var and get_var to store data in a binary format. The good thing about this is that it is harder for players to modify and automatically handles most data types. The con is that it is not as flexible if we need version control.

The third one and the one I went with is a Godot resource file .tres. This method uses Godot’s native Resource system to save data as a .tres file. The data is represented as exported variables in a Resource script like PlayerData.gd. The issue with this is that it is engine specific and not very portable to other engines. The good thing is it integrates naturally with Godot's engine and it is easy to reuse across scenes and nodes making it easier to develop on Godot specifically.
