const showFightDetails = (event) => {
  console.log(event.currentTarget)
  // get location id w/ event.currentTarget.dataset.id
  // fetch location info from backend
  // append to dom the informations using a partial
}


const showFight = () => {
  const markers = document.querySelectorAll('.marker')
  console.log(markers)
  if (markers) {
    markers.forEach((marker) => {
      marker.addEventListener('click', showFightDetails)
    })
  }
}
 export { showFight }
