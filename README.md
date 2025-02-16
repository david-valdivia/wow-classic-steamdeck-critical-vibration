
# CritNotifier - WoW Classic Addon

CritNotifier is an **addon for World of Warcraft Classic** that triggers controller vibration when the player lands a **critical hit**.  

## 📂 Installation

1. Download and extract the `CritNotifier` folder.
2. Copy the folder to the following path:
   ```
   World of Warcraft/
   └── _classic_era_/
       └── Interface/
           └── AddOns/
               └── CritNotifier/
                   ├── CritNotifier.toc
                   ├── CritNotifier.lua
   ```
3. Launch the game and make sure the addon is enabled in **Menu > AddOns**.

## 🔧 Requirements  
- **WoW Classic Era** (11403) or **WoW Classic WotLK** (30402).  
- A configured game controller for vibration to work.

## ⚙️ How It Works  
- Detects critical hits made by the player using `COMBAT_LOG_EVENT_UNFILTERED`.
- When a critical hit is detected, it triggers controller vibration with:
  ```lua
  C_GamePad.SetVibration("High", 1)
  ```
- Displays a chat message indicating the critical hit.

## 📜 Files  
- `CritNotifier.toc`: Addon configuration file.  
- `CritNotifier.lua`: Addon code.  

## 🛠️ Customization  
If you want to modify the intensity or duration of the vibration, change the parameter in `C_GamePad.SetVibration("High", 1)`. You can use `"Low"`, `"Medium"`, or `"High"` and adjust `1` to any duration in seconds.

## 📢 Contributions  
Feel free to improve the addon! You can fork the repository and submit a pull request.  

## 📝 License  
This addon is released under the MIT License.
