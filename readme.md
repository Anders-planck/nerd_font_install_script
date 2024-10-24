```markdown
# Font Installer Script

This repository contains a script `main.sh` that reads a `font.json` file and installs each font listed in the file using Homebrew.

## Prerequisites

- **Homebrew**: Ensure you have Homebrew installed on your macOS. You can install it from [Homebrew's official website](https://brew.sh/).
- **jq**: The script uses `jq` to parse the JSON file. The script will check if `jq` is installed and install it if necessary.

## How It Works

1. The script checks if `jq` is installed. If not, it installs `jq` using Homebrew.
2. It reads the `font.json` file and extracts the `caskName` for each font.
3. For each `caskName`, it runs the command `brew install --cask font-<caskName>-nerd-font` to install the font.

## Usage

1. Clone this repository to your local machine.
2. Ensure the `font.json` file is in the same directory as `main.sh`.
3. Make the script executable by running:
   ```sh
   chmod +x main.sh
   ```
4. Run the script:
   ```sh
   ./main.sh
   ```

The script will install all the fonts listed in the `font.json` file.

## Example `font.json`

Here is an example of what the `font.json` file should look like:

```json

{
  "fonts": [
    {
      "unpatchedName": "Victor Mono",
      "licenseId": "OFL-1.1-no-RFN",
      "RFN": false,
      "version": "1.5.6",
      "patchedName": "VictorMono",
      "folderName": "VictorMono",
      "imagePreviewFont": "VictorMono Nerd Font",
      "imagePreviewFontSource": "VictorMono/Regular/VictorMono-Regular.ttf",
      "linkPreviewFont": "victor-mono",
      "caskName": "victor-mono",  // only this is needed
      "repoRelease": true,
      "description": "Clean, crisp and narrow, with a large x-height and clear punctuation"
    },
    {
      "unpatchedName": "Zed Mono",
      "licenseId": "OFL-1.1-no-RFN",
      "RFN": false,
      "version": "1.2.0",
      "patchedName": "ZedMono",
      "folderName": "ZedMono",
      "imagePreviewFont": "ZedMono NF",
      "imagePreviewFontSource": "ZedMono/Normal/zed-mono-regular.ttf",
      "linkPreviewFont": false,
      "caskName": "zed-mono", // only this is needed
      "repoRelease": false,
      "description": "Zed Mono is a more rounded version of Iosevka"
    }
    // Add more fonts as needed
  ]
}
```

## Notes

- Ensure that the `caskName` field in the `font.json` file is correctly specified for each font.
- The script assumes that the fonts follow the naming convention `font-<caskName>-nerd-font` in Homebrew.

Feel free to modify the `font.json` file to include the fonts you want to install.
```