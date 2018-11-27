import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// flatpickr(".datepicker", {
//   disable: ["2018-11-28"],
//   altInput: true,
//   plugins: [new rangePlugin({ input: "#range_end"})]
// })

flatpickr("#range_start", {
  // altInput: true,
   // mode: "range",
  plugins: [new rangePlugin({ input: "#range_end"})]
})
