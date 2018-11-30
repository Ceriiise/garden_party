const all = document.getElementById('all')
const swim = document.getElementById('swim')
const bbq = document.getElementById('bbq')

const activeBtn = () => {
  all.addEventListener('click', () => {
    all.classList.add('active');
    swim.classList.remove('active');
    bbq.classList.remove('active');
  });
  swim.addEventListener('click', () => {
    all.classList.remove('active');
    swim.classList.add('active');
    bbq.classList.remove('active');
  });
  bbq.addEventListener('click', () => {
    all.classList.remove('active');
    swim.classList.remove('active');
    bbq.classList.add('active');
  });
};

export { activeBtn };
