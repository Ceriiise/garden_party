import flatpickr from "flatpickr"
import "flatpickr/dist/themes/airbnb.css"
import rangePlugin from "flatpickr/dist/plugins/rangePlugin"

// flatpickr(".datepicker", {
//   disable: ["2018-11-28"],
//   altInput: true,
//   plugins: [new rangePlugin({ input: "#range_end"})]
// })

const disabled = document.getElementById('dates-for-flatpickr')

if (disabled) {
  const disabledDates = JSON.parse(disabled.dataset.flatpickr)
  flatpickr("#range_start", {
    plugins: [new rangePlugin({ input: "#range_end"})],
    disable: disabledDates,
    dateFormat: "Y-m-d",
  })
}
