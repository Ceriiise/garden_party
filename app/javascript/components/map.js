
const displayMap = () => {
  const btn = document.querySelector('#map-btn');
  const map = document.querySelector('#map');
  const cards = document.querySelector(".card-container")

  btn.addEventListener('click', () => {
    console.log('hello')
    map.classList.toggle('disabled');
    cards.classList.toggle('big');
  });
};

export { displayMap };
