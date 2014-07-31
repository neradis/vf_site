updateDims = () ->
  dimStr = $(window).width().toString() + " x " + $(window).height().toString()
  $("footer>p.vf-debug").text(dimStr)

$(updateDims)

$(window).resize(updateDims)
