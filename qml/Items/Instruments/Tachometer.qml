// Copyright (C) 2020 twyleg
import QtQuick 2.0

import org.opendashboard.utils 0.1

Item {

	id: tachometer

	property real velocity: 0
	property real rpm: 0
	property int gear: 0

	property real ax: 0
	property real ay: 0
	property real az: 0

	property real throttle: 0
	property real brake: 0

	Svg {
		id: tachometerShadows
		source: qwd + "/build/extracted_layers/tachometer_shadows.svg"
	}

	Svg {
		id: tachometerFrame
		source: qwd + "/build/extracted_layers/tachometer_frame.svg"
	}

	Svg {
		id: tachometerForcesThrottleLight
		source: qwd + "/build/extracted_layers/tachometer_forces_throttle_light.svg"
	}

	Svg {
		id: tachometerForcesBrakeLight
		source: qwd + "/build/extracted_layers/tachometer_forces_brake_light.svg"
	}

	Svg {
		id: tachometerForces
		source: qwd + "/build/extracted_layers/tachometer_forces.svg"
	}

	Svg {
		id: tachometerText
		source: qwd + "/build/extracted_layers/tachometer_text.svg"
	}

	Text {
		id: gear
		text: tachometer.gear
		color: "white"
		font.family: cpMonoFont.name
		font.pixelSize: 0.1 * parent.height
		anchors.verticalCenterOffset: parent.height * 0.21
		anchors.centerIn: parent
	}

	Text {
		id: velocityText
		text: tachometer.velocity.toFixed(0)
		color: "white"
		font.family: cpMonoFont.name
		font.pixelSize: 0.10 * parent.height

		anchors.verticalCenterOffset: -parent.height * 0.25
		anchors.centerIn: parent
	}

	Text {
		id: rpmText
		text: tachometer.rpm.toFixed(0)
		color: "white"
		font.family: cpMonoFont.name
		font.pixelSize: 0.05 * parent.height

		anchors.verticalCenterOffset: -parent.height * 0.17
		anchors.centerIn: parent
	}
}
