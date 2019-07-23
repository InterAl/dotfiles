#!/usr/bin/env node
const cheerio = require('cheerio');
const axios = require('axios');

const url = process.argv[2];

(async function start() {
    try {
        const response = await axios('https://www.morfix.co.il/' + url, {headers: {userAgent: 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/72.0.3626.119 Safari/537.36'}});
        const html = response.data;
        const $ = cheerio.load(html)
        const t = $('.normal_translation_div').text().trim();
        console.log(t);
        process.exit();
    } catch (err) {
        console.error(err.response.status);
    }
})();
