// Copyright (C) 2020 twyleg
import QtQuick 2.2
import QtQuick.Window 2.1

import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras 1.4

import QtPositioning 5.5
import QtLocation 5.6

import "./Instruments"

Item {
	id: cockpit

	anchors.fill: parent

	Tachometer {
		id: tachometer

		width: parent.height * 0.95
		height: parent.height * 0.95

		x: parent.width * 0.5 - width/2
		y: parent.heigh * 0.5 - height/2

		rpm: dataModel.vehicleData.powertrain.engineRotation
		gear: dataModel.vehicleData.powertrain.gearboxGear

		velocity: dataModel.vehicleData.dynamics.velocity
		ax: dataModel.vehicleData.dynamics.ax
		ay: dataModel.vehicleData.dynamics.ay
		az: dataModel.vehicleData.dynamics.az

		throttle: dataModel.vehicleData.driverInput.throttle
		brake: dataModel.vehicleData.driverInput.brake
	}

}
