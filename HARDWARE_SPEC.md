# BAINT Pods Hardware & Firmware Spec

## 1. Bluetooth
- BLE 5.0
- Unique Device ID per earbud
- Supports audio, touch commands, and remote lock

## 2. Pods Lock
- Firmware command `LOCK_DEVICE` disables audio & gestures
- `UNLOCK_DEVICE` restores full functionality
- Works offline via BLE

## 3. Battery Monitoring
- Individual battery tracking for left, right, and case
- Reported via BLE to app

## 4. EQ Control
- Bass, Mid, Treble adjustable via app
- Firmware applies EQ in real-time

## 5. Firmware Updates
- OTA updates via app
- Must respect Pods Lock state during updates

## 6. Future Features
- Auto-lock if disconnected > X minutes
- Owner messaging when locked
- Remote unlock via secondary device
