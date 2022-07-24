const express = require("express");
const morgan = require("morgan");

const app = express();
const router = require("./routes/developers.js");

const PORT = process.env.APP_PORT || 3000;

app.disable("etag"); // Disable cache 304 status-code |¦ Deshabilitar caché 304 código de estado
app.use(morgan("short")); // Log server requests || Registro de solicitudes del servidor LOGS Monitoreo
app.use(express.json());
app.use(router);

app.get("/", (req, res) => {
  res.status(200).json({ message: "Hello, My name is Daniel." });
});

app.listen(PORT, () => console.log(`Listening on port ${PORT}`));

module.exports = app;
