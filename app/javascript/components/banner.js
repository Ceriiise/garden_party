import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["Find the best garden for your party"],
    typeSpeed: 60,
    loop: true
  });
};

export { loadDynamicBannerText };
