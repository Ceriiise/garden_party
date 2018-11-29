
const displayMap = () => {
  const btn = document.getElementById("map-btn");
  const map = document.getElementById('map');
  const cards = document.querySelector(".card-container")
  const search = document.querySelector('.search');

  if (btn) {
    btn.addEventListener('click', () => {
      console.log('hello')
      map.classList.toggle('disabled');
      cards.classList.toggle('big');
      search.classList.toggle('large');
    });
  }

};

export { displayMap };
