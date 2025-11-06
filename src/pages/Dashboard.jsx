export default function Dashboard() {
  return (
    <div className="recanto-container">
      <header className="recanto-header">
        <div className="header-left">
          <img src="/logo.png" alt="Logo Recanto Imperial" className="logo" />
          <div>
            <h1>RECANTO IMPERIAL SGB</h1>
            <h2>MANAGER</h2>
          </div>
        </div>

        <nav className="menu">
          <button>CADASTRAR AVE</button>
          <button>REGISTRAR CRUZAMENTO</button>
          <button>EVENTOS DO PLANTEL</button>
          <button>RELATÓRIO E EXPORTAÇÃO</button>
          <button>PESQUISA E FILTROS</button>
          <button>BACKUP E RESTAURAÇÃO</button>
        </nav>

        <div className="header-right">
          <img src="/icone1.png" alt="Ícone 1" />
          <img src="/icone2.png" alt="Ícone 2" />
        </div>
      </header>

      <main className="recanto-main">
        <section className="cards">
          <div className="card">
            <img src="/galo.png" alt="Aves Ativas" />
            <h3>300</h3>
            <p>AVES ATIVAS</p>
          </div>

          <div className="card">
            <img src="/dna.png" alt="Cruzamentos Realizados" />
            <p>CRUZAMENTOS REALIZADOS</p>
          </div>

          <div className="card">
            <img src="/grafico.png" alt="Indicadores" />
            <p>INDICADORES VISUAIS</p>
          </div>
        </section>

        <section className="eventos">
          <h3>ÚLTIMOS EVENTOS</h3>

          <div className="evento">
            <h4><span className="tipo nascimento">NASCIMENTO</span> NOVA AVE <span className="data">16/09/2025</span></h4>
            <p>Nova ave registrada no sistema.</p>
          </div>

          <div className="evento">
            <h4><span className="tipo venda">AVE VENDIDA</span> <span className="data">16/09/2025</span></h4>
            <p>Venda confirmada, ave marcada como inativa.</p>
          </div>
        </section>
      </main>
    </div>
  );
}
