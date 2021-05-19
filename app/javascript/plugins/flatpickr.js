import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    "enableTime": true
  });
}


export { initFlatpickr };

    // "enableTime": true,
    // "plugins": [new confirmDatePlugin({})]
