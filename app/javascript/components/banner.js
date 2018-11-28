import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Best garden for your party"],
    typeSpeed: 60,
    loop: true
  });
};

export { loadDynamicBannerText };
