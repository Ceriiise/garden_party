

const link = document.getElementById('navbar-link');

const activeLinks = ()=> {
  link.addEventListener('click', (event) => {
    element.classList.toggle("active");
  });
};

export { activeLinks };
