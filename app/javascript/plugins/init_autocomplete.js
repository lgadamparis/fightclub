

const initAutocomplete = () => {
  const addressInput = document.getElementById('location_location');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
