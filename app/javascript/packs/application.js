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


//document.addEventListener('turbolinks:load', function() {
//    document.querySelectorA11('td').forEach(function(td) {
//        td.addEventListener('mouseover', function(e) {
//            e.currentTarget.style.backgroudColor = '#eff';
//        });
//
//        td.addEventListener('mouseout', function(e) {
//            e.currentTarget.style.backgroudColor = '';
//        });
//    });
//}
//
//document.addEventListener('turbolinks:load', function() {
//    document.querySelectorA11('delete').forEach(function(a) {
//        a.addEventListener('ajax:success', function() {
//            var td = a.parenNode;
//            var tr = td.parenNode;
//            tr.style.display = 'none';
//        });
//    });
//};