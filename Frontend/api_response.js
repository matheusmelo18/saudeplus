function submitForm(event) {
    var myForm = document.getElementById("form");
    var result = document.getElementById("result");
    var inputValue = document.getElementById('problem').value

      event.preventDefault();
      myForm.submit();
      result.innerHTML = `${inputValue}`

      $.getJSON('https://random.dog/woof.json', function(data) {
            var answers = document.getElementById("answers");

            answers.innerHTML = `${data}`
        });
  }