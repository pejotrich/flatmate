// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")





// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------





// External imports
import "bootstrap";

import flatpickr from 'flatpickr';
require("flatpickr/dist/flatpickr.min.css");

document.addEventListener("turbolinks:load", () => {
  flatpickr(".flatpickr", {
    minDate: "today",

  })
})

// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
});


//new private-shares


const users = document.querySelectorAll(".sharing")

users.forEach((user) => {
  const circle = user.querySelector(".check-friend");
  user.addEventListener("click", (event) => {
    circle.classList.toggle("active")
    const userId = (user.querySelector(".user_id").innerHTML)
    const option = document.querySelector(`option[value=${CSS.escape(userId)}]`)
    option.toggleAttribute("selected")
  })
})

users.forEach((user) => {
  user.addEventListener("mouseenter", (event) => {
    user.classList.toggle("darker")
  })
})

users.forEach((user) => {
  user.addEventListener("mouseleave", (event) => {
    user.classList.toggle("darker")
  })
})


import 'select2/dist/css/select2.css';
import { multipleSelect } from "../components/select";
multipleSelect();
const scrollToTopButton = document.getElementById('js-top');

const scrollFunc = () => {
  // Get the current scroll value
  let y = window.scrollY;

  // If the scroll value is greater than the window height, let's add a class to the scroll-to-top button to show it!
  if (y > 0) {
    scrollToTopButton.className = "top-link show";
  } else {
    scrollToTopButton.className = "top-link hide";
  }
};

window.addEventListener("scroll", scrollFunc);

const scrollToTop = () => {
  // Let's set a variable for the number of pixels we are from the top of the document.
  const c = document.documentElement.scrollTop || document.body.scrollTop;

  // If that number is greater than 0, we'll scroll back to 0, or the top of the document.
  // We'll also animate that scroll with requestAnimationFrame:
  // https://developer.mozilla.org/en-US/docs/Web/API/window/requestAnimationFrame
  if (c > 0) {
    window.requestAnimationFrame(scrollToTop);
    // ScrollTo takes an x and a y coordinate.
    // Increase the '10' value to get a smoother/slower scroll!
    window.scrollTo(0, c - c / 10);
  }
};

// When the button is clicked, run our ScrolltoTop function above!
scrollToTopButton.onclick = function(e) {
  e.preventDefault();
  scrollToTop();
}
