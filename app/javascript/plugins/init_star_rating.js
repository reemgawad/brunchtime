// app/javascript/plugins/init_star_rating.js
import "jquery-bar-rating";
import $ from 'jquery'; // <-- if you're NOT using a Le Wagon template (cf jQuery section)

const initStarRating = () => {
  document.addEventListener("turbolinks:load",function() {
  $('#visit_rating').barrating({
    theme: 'css-stars'

  });
})
};

export { initStarRating };
