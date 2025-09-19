import { launchServer } from "camoufox-js";
import { firefox } from "playwright-core";

// you might need to run `npx camoufox-js fetch` to download the browser after installing the package
console.log("Launching server");
const server = await launchServer({ port: 8888, ws_path: "/camoufox" });
const browser = await firefox.connect(server.wsEndpoint());

const page = await browser.newPage();
page.goto("https://github.com/BountyHunter1999/containerized-browser");

await page.waitForTimeout(10000);

// start the repo
await page.click(
  ".js-toggler-target.rounded-left-2.btn-with-aria-count.btn-sm.btn.BtnGroup-item"
);

await browser.close();
await server.close(); // Close the server when done
