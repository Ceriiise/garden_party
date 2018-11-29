import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  const banner = document.getElementById('banner-typed-text')
  if (banner) {
    new Typed(banner, {
      strings: ["Find the best garden for your party"],
      typeSpeed: 60,
      loop: true
    });
  }
};

export { loadDynamicBannerText };
