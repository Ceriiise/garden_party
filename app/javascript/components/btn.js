const all = document.getElementById('all')
const swim = document.getElementById('swim')
const bbq = document.getElementById('bbq')

const activeBtn = () => {
  if (all) {
    all.addEventListener('click', () => {
      all.classList.add('active');
      swim.classList.remove('active');
      bbq.classList.remove('active');
    });
  }
  if (swim) {
    swim.addEventListener('click', () => {
      all.classList.remove('active');
      swim.classList.add('active');
      bbq.classList.remove('active');
    });
  }
  if (bbq) {
    bbq.addEventListener('click', () => {
      all.classList.remove('active');
      swim.classList.remove('active');
      bbq.classList.add('active');
    });
  }
};

export { activeBtn };
