import Typed from 'typed.js';

const bindSweetAlertButtonDemo = () => {
  new Typed('#banner-typed-text', {
    strings: ["All you need is cocktail!", "Drink, drink and drink again"],
    typeSpeed: 130,
    loop: true
  });
};

export { bindSweetAlertButtonDemo };
