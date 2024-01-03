const puppeteer = require('puppeteer')
 
async function printPDF() {
  const browser = await puppeteer.launch({ headless: true });
  const page = await browser.newPage();
  await page.goto('http://localhost:5173/cv?embed', {waitUntil: 'networkidle0'});
  // const cv = await page.evaluate(() => document.querySelector('article').innerHTML)
  // await page.setContent(cv)

  const pdf = await page.pdf({ path: 'puppeteerPDF.pdf', format: 'A4' });
 
  await browser.close();
  return pdf
}
printPDF()
