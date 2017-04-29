Backend for the kanji lookup app. Just an api.

# running
```rails s```

# querying
Just send a GET request to /japanese_words/ with an array of characters to find matches for.

Example using node:

axios = require("axios")

axios.get('http://localhost:3000/japanese_words/', {
  params: {
    characters: ['漢','字']
}

}).then((res) => {
  console.log(res)
})
