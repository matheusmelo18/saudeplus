function submitForm(event) {
    var myForm = document.getElementById("form");
    var result = document.getElementById("result");
    var inputValue = document.getElementById('problem').value

      event.preventDefault();
      result.innerHTML = `${inputValue}`

    const url = `http://127.0.0.1:8001?input=${inputValue}`
    fetch(url).then(res => res.json()).then((data) => {
        var answers = document.getElementById("answers");
        answers.innerHTML = `${data.text}`
    })
  }