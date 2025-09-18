import { launchServer } from "camoufox-js";
import { firefox } from "playwright-core";

// you might need to run `npx camoufox-js fetch` to download the browser after installing the package

const server = await launchServer({ port: 8888, ws_path: "/camoufox" });
const browser = await firefox.connect(server.wsEndpoint());

const page = await browser.newPage();

// ...
// Use your browser instance as usual
// ...

await browser.close();
await server.close(); // Close the server when done
