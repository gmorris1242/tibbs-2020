$(document).ready(() => {
  const homePage = window.location.pathname === '/'

  $(window).scroll(function() {
    $(this).scrollTop() > (homePage ? 500 : 50) ?
      $('header').addClass('scroll-header') :
      $('header').removeClass('scroll-header')
  })

  $('.hamburger').click(function() {
    $(this).toggleClass('is-active')
    $('header nav ul').toggleClass('open')
  })
})
