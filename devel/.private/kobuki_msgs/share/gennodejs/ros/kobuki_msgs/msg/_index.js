
"use strict";

let DigitalOutput = require('./DigitalOutput.js');
let BumperEvent = require('./BumperEvent.js');
let CliffEvent = require('./CliffEvent.js');
let WheelDropEvent = require('./WheelDropEvent.js');
let DockInfraRed = require('./DockInfraRed.js');
let Sound = require('./Sound.js');
let PowerSystemEvent = require('./PowerSystemEvent.js');
let ControllerInfo = require('./ControllerInfo.js');
let ScanAngle = require('./ScanAngle.js');
let ButtonEvent = require('./ButtonEvent.js');
let DigitalInputEvent = require('./DigitalInputEvent.js');
let Led = require('./Led.js');
let ExternalPower = require('./ExternalPower.js');
let VersionInfo = require('./VersionInfo.js');
let MotorPower = require('./MotorPower.js');
let SensorState = require('./SensorState.js');
let KeyboardInput = require('./KeyboardInput.js');
let RobotStateEvent = require('./RobotStateEvent.js');
let AutoDockingActionFeedback = require('./AutoDockingActionFeedback.js');
let AutoDockingActionGoal = require('./AutoDockingActionGoal.js');
let AutoDockingGoal = require('./AutoDockingGoal.js');
let AutoDockingAction = require('./AutoDockingAction.js');
let AutoDockingActionResult = require('./AutoDockingActionResult.js');
let AutoDockingFeedback = require('./AutoDockingFeedback.js');
let AutoDockingResult = require('./AutoDockingResult.js');

module.exports = {
  DigitalOutput: DigitalOutput,
  BumperEvent: BumperEvent,
  CliffEvent: CliffEvent,
  WheelDropEvent: WheelDropEvent,
  DockInfraRed: DockInfraRed,
  Sound: Sound,
  PowerSystemEvent: PowerSystemEvent,
  ControllerInfo: ControllerInfo,
  ScanAngle: ScanAngle,
  ButtonEvent: ButtonEvent,
  DigitalInputEvent: DigitalInputEvent,
  Led: Led,
  ExternalPower: ExternalPower,
  VersionInfo: VersionInfo,
  MotorPower: MotorPower,
  SensorState: SensorState,
  KeyboardInput: KeyboardInput,
  RobotStateEvent: RobotStateEvent,
  AutoDockingActionFeedback: AutoDockingActionFeedback,
  AutoDockingActionGoal: AutoDockingActionGoal,
  AutoDockingGoal: AutoDockingGoal,
  AutoDockingAction: AutoDockingAction,
  AutoDockingActionResult: AutoDockingActionResult,
  AutoDockingFeedback: AutoDockingFeedback,
  AutoDockingResult: AutoDockingResult,
};
