# ###
# # Welcome to the new js2coffee 2.0, now
# # rewritten to use the esprima parser.
# # try it out!
# ###
#
# listen = (el, event, handler) ->
#   if el.addEventListener
#     return el.addEventListener(event, handler)
#   else
#     el.attachEvent('on' + event, -> handler.call el)
#     # (($) ->
#       'use strict'
#       # Start of use strict
#       # Closes the sidebar menu
#       $('a.menu-toggle').click (e) ->
#         e.preventDefault()
#         $('#sidebar-wrapper').toggleClass 'active'
#         $('.menu-toggle > .fa-bars, .menu-toggle > .fa-times').toggleClass 'fa-bars fa-times'
#         $(this).toggleClass 'active'
#         return
#       # Smooth scrolling using jQuery easing
#       $('a.js-scroll-trigger[href*="#"]:not([href="#"])').click ->
#         if location.pathname.replace(/^\//, '') == @pathname.replace(/^\//, '') and location.hostname == @hostname
#           target = $(@hash)
#           target = if target.length then target else $('[name=' + @hash.slice(1) + ']')
#           if target.length
#             $('html, body').animate { scrollTop: target.offset().top }, 1000, 'easeInOutExpo'
#             return false
#         return
#       # Closes responsive menu when a scroll trigger link is clicked
#       $('#sidebar-wrapper .js-scroll-trigger').click ->
#         $('#sidebar-wrapper').removeClass 'active'
#         $('.menu-toggle').removeClass 'active'
#         $('.menu-toggle > .fa-bars, .menu-toggle > .fa-times').toggleClass 'fa-bars fa-times'
#         return
#       # Scroll to top button appear
#       $(document).scroll ->
#         scrollDistance = $(this).scrollTop()
#         if scrollDistance > 100
#           $('.scroll-to-top').fadeIn()
#         else
#           $('.scroll-to-top').fadeOut()
#         return
#       return
#     ) jQuery
#     # End of use strict
#     # Disable Google Maps scrolling
#     # See http://stackoverflow.com/a/25904582/1607849
#     # Disable scroll zooming and bind back the click event
#
#     onMapMouseleaveHandler = (event) ->
#       that = $(this)
#       that.on 'click', onMapClickHandler
#       that.off 'mouseleave', onMapMouseleaveHandler
#       that.find('iframe').css 'pointer-events', 'none'
#       return
#
#     onMapClickHandler = (event) ->
#       that = $(this)
#       # Disable the click handler until the user leaves the map area
#       that.off 'click', onMapClickHandler
#       # Enable scrolling zoom
#       that.find('iframe').css 'pointer-events', 'auto'
#       # Handle the mouse leave event
#       that.on 'mouseleave', onMapMouseleaveHandler
#       return
#
#     # Enable map zooming with mouse scroll when the user clicks the map
#     $('.map').on 'click', onMapClickHandler
#   return
# # ---
# # generated by js2coffee 2.2.0
