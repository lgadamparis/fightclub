// app/javascript/plugins/flatpickr.js
import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  if (document.querySelector(".range_start")) {
    const startInput = document.querySelector(".range_start");
    const endInput = document.querySelector(".range_end");

    flatpickr(startInput, {
      altInput: true,
      plugins: [new rangePlugin({ input: endInput })]
    });
  }
}

export { initFlatpickr };
