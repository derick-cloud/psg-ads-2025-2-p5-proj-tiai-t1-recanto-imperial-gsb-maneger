import express from "express";
import cors from "cors";
import dotenv from "dotenv";
import avesRoutes from "./routes/avesRoutes.js";

// Carrega variáveis de ambiente (.env)
dotenv.config();

const app = express();
app.use(cors());
app.use(express.json());

// Rotas
app.use("/aves", avesRoutes);

// Porta configurável pelo .env
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log(`🚀 Servidor rodando em http://localhost:${PORT}`);
});
