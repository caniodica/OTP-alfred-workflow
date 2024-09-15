# OTP-alfred-workflow
An Alfred Workflow for generating OTPs using oathtool and copying them to clipboard,
showing an useful notification with the expiration.

![Preview](img/preview.png)

## Prerequisites
- [oathtool](https://www.nongnu.org/oath-toolkit/) <br>

Install it using your package manager or download it from the official website. <br>
The simplest way to install it on macOS is using Homebrew: <br>
`brew install oath-toolkit`

## Usage

1. Import the workflow .otp file in Alfred, by double-clicking it. <br> ![WorkFlow](img/workflow.png)
2. Set the hotkey you want to use to trigger the workflow by double-clicking on the hotkey block. <br> ![Hotkey](img/hotkey.png)
3. Open the args and variables block by double click on the **>** symbol. <br> ![Args_Variables](img/args_block.png)
4. Set name and secret key of your OTP by filling the `name` and `secret` variables. <br> ![Secret](img/variables_1.png) <br> ![Name](img/variables_2.png)
5. Copy the first two blocks and repeat the steps 3 and 4 for each OTP you want to generate.
6. Enjoy your OTPs!
