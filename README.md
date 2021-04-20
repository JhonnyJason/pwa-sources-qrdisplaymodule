[![hackmd-github-sync-badge](https://hackmd.io/ZT34FQB7SMuBp0cz4fj5vQ/badge)](https://hackmd.io/ZT34FQB7SMuBp0cz4fj5vQ)
###### tags: `strunfun`

# [pwa-sources-qrdisplaymodule](https://github.com/JhonnyJason/pwa-sources-qrdisplaymodule) - qrdisplaymodule

## Description
Component to display specific information as a QR-Code

## Expectation to the Environment
- QR = require("[vanillaqr](https://www.npmjs.com/package/vanillaqr)").default
- display frame available in the DOM which looks like this:
    ```pug
    #qrdisplay-background
        #qrdisplay-qr
        #qrdisplay-content
    ```

## Structure
- `QR°`
- `currentQr°`
- `qrdisplayBackground°`
- `qrdisplayQr°`
- `qrdisplayContent°`
- `qrClicked§`
- `.diplayCode§ information"`

## Specification
- `QR°` = the [vanillaqr](https://www.npmjs.com/package/vanillaqr) package
- `currentQr°` = the instance of the new QR(options) object
- `qrdisplayBackground°` = the DOM-element for the qrdisplay-background div - behaves as the container div element being visible on the class "active"
- `qrdisplayQr°` = the DOM-element for the qrdisplay-qr div - here the QR Code will be drawn into
- `qrdisplayContent°` = the DOM-element for the qrdisplay-content div - here the displayed information will be displayed as string
- `qrClicked§` = will remove "active" from `qrdisplayBackground°` on click event
- `.diplayCode§ information"` = this function is sued to display the QR Code for a specific information string
