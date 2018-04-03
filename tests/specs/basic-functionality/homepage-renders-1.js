const assert = require('assert')

describe('TestObject website', function() {
    it('TestObject homepage loads', function() {
        browser.url('http://localhost:3000')
        browser.getUrl()
    })
})