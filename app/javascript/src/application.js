import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

console.log("entro")

const application = Application.start()
const context = require.context("./controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
