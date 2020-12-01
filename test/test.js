const assert = require('assert')
const axios = require('axios')

it('Main page content', () => {

    const message = 'Hello Hepsiburada from Buse Colak'
    const port = process.env.PORT || 11130

    const url = `http://localhost:${port}`
    return axios(url)
        .then(response => assert.equal(response.data, message))

})
