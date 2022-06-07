// All dimensions in mm

$fn = 120;

// https://support.apple.com/kb/SP840?locale=en_US
function airtag_diameter() = 31.9;
function airtag_height() = 8;

function airtag_door_diameter() = airtag_diameter() - 7;

module airtag_body() {
	color("White")
		difference() {
			scale([1, 1, airtag_height()/airtag_diameter()])
				sphere(d=airtag_diameter());

			translate([0, 0, airtag_height()/4])
				cylinder(d=airtag_diameter(), h=airtag_height());
		}
}

module airtag_door() {
	/*
	 *  This translation is purely to prevent the two spheres from
	 *  z-fighting over which color to use.
	 */
	translate([0, 0, .1])

	color("Silver")
		intersection() {
			translate([0, 0, airtag_height()/4])
				cylinder(d=airtag_door_diameter(), h=airtag_height()/4);

			scale([1, 1, airtag_height()/airtag_diameter()])
					sphere(d=airtag_diameter());
		}
}

module airtag() {
	airtag_body();
	airtag_door();
}

airtag();
