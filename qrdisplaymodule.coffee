############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("qrdisplaymodule")
#endregion


############################################################
import QR from "vanillaqr"

############################################################
currentQr = null

############################################################
export initialize = ->
    log "qrdisplaymodule.initialize"

    width = window.innerWidth
    height = window.innerHeight - 100 # for gap to top and label
    
    if height > width then size = width
    else size = height
    log size

    options = 
        url: ""
        size: size
        toTable: false
        ecclevel: 3
        noBorder: true

    currentQr = new QR(options)
    qrdisplayQr.appendChild(currentQr.domElement)    

    qrdisplayBackground.addEventListener("click", qrClicked)

    return

############################################################
qrClicked = ->
    log "qrClicked"
    qrdisplayBackground.classList.remove("active")
    return

############################################################
export displayCode = (information) ->
    log "qrdisplaymodule.displayCode"
    log information
    currentQr.url = information
    qrdisplayContent.textContent = information
    currentQr.init()
    qrdisplayBackground.classList.add("active")
    return
