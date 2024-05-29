function dd(){
    window.alert("уэээ");
}

function startTime() {

    const today = new Date();

    let h = today.getHours();
    let m = today.getMinutes();
    let s = today.getSeconds();

    m = checkTime(m);
    s = checkTime(s);

    document.getElementById('out').innerHTML =  h + ":" + m + ":" + s;
    document.getElementById('ft').innerHTML =  "dfsfd";
    setTimeout(startTime, 1000);
  }
  
  function checkTime(i) {
    if (i < 10) {i = "0" + i};
    return i;
  }

// popup reach window
$(document).ready(function(){
  $('#reach__btn').on('click', function(){
    $('#reach__popup').css('top', '0');
    $('#reach__popup__inner').css('bottom', '0');
  })

  $(window).on('click', function(event) {
    if ($(event.target).is('#reach__popup')) {
        $('#reach__popup').css('top', '-100%');
    }
});
  $(window).on('click', function(event) {
    if ($(event.target).is('#popup__reach__close')) {
        $('#reach__popup').css('top', '-100%');
    }
});
})
// popup hobby window
$(document).ready(function(){
  $('#hobby__btn').on('click', function(){
    $('#hobby__popup').css('top', '0');
    $('#reach__popup__inner').css('bottom', '0');
  })

  $(window).on('click', function(event) {
    if ($(event.target).is('#hobby__popup')) {
        $('#hobby__popup').css('top', '-100%');
    }
});
  $(window).on('click', function(event) {
    if ($(event.target).is('#popup__hobby__close')) {
        $('#hobby__popup').css('top', '-100%');
    }
});
})

// popup ticket window
$(document).ready(function(){
  $('#ticket__add__btn').on('click', function(){
    $('#ticket__popup').css('top', '0');
    $('#ticket__popup__inner').css('bottom', '0');
  })

  $(window).on('click', function(event) {
    if ($(event.target).is('#ticket__popup')) {
        $('#ticket__popup').css('top', '-100%');
    }
});
  $(window).on('click', function(event) {
    if ($(event.target).is('#ticket__popup__close')) {
        $('#ticket__popup').css('top', '-100%');
    }
});
})