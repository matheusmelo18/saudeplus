
$.getJSON('https://random.dog/woof.json', function(data) {
var answer = data
});


  function submitForm(event) {
    var myForm = document.getElementById("form");
    var result = document.getElementById("result");
    var inputValue = document.getElementById('problem').value
    console.log(myForm)

      event.preventDefault();
      myForm.submit();
      result.innerHTML = `${inputValue}`

      $.getJSON('https://random.dog/woof.json', function(data) { // pegar o inputValue e enviar pra api 
        console.log(inputValue);
        });
  }  