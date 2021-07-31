import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('pool_s');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };
