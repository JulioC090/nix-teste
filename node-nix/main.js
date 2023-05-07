import express from "express";

const app = express();
const PORT = 3000;

app.get("/", (req, res) => {
  res.send("Parece estar funcionando");
});

app.listen(PORT, () => {
  console.log(`Escutando na porta ${PORT}`);
});
