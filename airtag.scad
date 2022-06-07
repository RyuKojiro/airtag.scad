// All dimensions in mm

$fn = 120;

// https://support.apple.com/kb/SP840?locale=en_US
function airtag_diameter() = 31.9;
function airtag_height() = 8;

function airtag_battdoor_diameter() = airtag_diameter() - 7;

module airtag() {
	color("White")
		scale([1, 1, airtag_height()/airtag_diameter()])
			sphere(d=airtag_diameter());

	color("Silver")
		cylinder(d=airtag_battdoor_diameter(), h=airtag_height()/2);
}

airtag();
