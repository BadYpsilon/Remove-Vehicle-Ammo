# Remove-Vehicle-Ammo
This is an override for ExileServer_object_vehicle_event_onGetIn.sqf

Thanks to those who helped me with the event handler layout. I believe it was eraser :P BAD MEMORY!

Thanks to [GADD]WombDilator for the help with a few of the jets!

The script allows you to remove certain ammo whenever you enter a vehicle on Exile.
It already contains the neccessary code to be able to edit it easily.

If you wish to add more vehicles to the script, follow the format and add the ammo and weapons for the vehicles into the if statements.

Use the debug menu watch section and add the following to a bar to view the Weapons used by the vehicle you are in.
vehicle player weaponsTurret [-1];
-1 is pilot/driver seat, 0 is gunner, 1 is passenger/more guns and so on.

Use the following to view the Ammo:
magazines vehicle player;
Numbers in the script is the same as above.

If you use infiSTAR you can click copy next to the watch bars to run the code and copy the outcome into a copyable box. EASY PEASY.

Just add the classes for the vehicle, ammo and weapons as the rest of them are laid out.
Make sure you use the correct seat number for the vehicle that the guns and ammo are assigned to.

All you have to do is override ExileServer_object_vehicle_event_onGetIn

class CfgExileCustomCode 
{
  ExileServer_object_vehicle_event_onGetIn = "DesiredFilepath\ExileServer_object_vehicle_event_onGetIn.sqf";
};

By adding ammo to the if statement, you remove it but they can still select the gun and switch to the guns, by adding guns
to the script it removes the ability to select the gun.

Use these links to get ammo and weapons without debug menu.

It won't fuck shit up by keeping vehicles from another mod in the script. It just skips past it. 
