# ShelfScan — OCR de Estante de Livros
 
> Projeto de visão computacional para detectar, ler e catalogar livros de uma estante (ou páginas) usando OpenCV + Tesseract, com integração futura a um bot de notificações via WhatsApp.
 
## 🎯 Sobre o projeto
 
Esse é meu projeto de férias para dar os primeiros passos em **visão computacional**. A ideia é:
 
1. Capturar uma foto de uma estante (ou página de livro)
2. Processar a imagem para isolar texto
3. Extrair o texto via OCR
4. (Futuro) Enviar os resultados automaticamente para o WhatsApp via bot integrado (incluindo contagem de livros catalogados)
## 🧩 Como funciona (pipeline)
 
```
Imagem (foto da estante)
      │
      ▼
Pré-processamento (escala de cinza, binarização)
      │
      ▼
Segmentação (detecção de contornos/lombadas individuais)
      │
      ▼
OCR (Tesseract) em cada região
      │
      ▼
Lista de títulos detectados
      │
      ▼
(futuro) Bot WhatsApp envia o resultado
```
 
## 🚀 Status do projeto / Roadmap
 
- [x] Fase 0 — Setup do ambiente e primeiro teste de OCR
- [ ] Fase 1 — OCR em página/lombada única
- [ ] Fase 2 — Segmentação de múltiplas lombadas em uma estante
- [ ] Fase 3 — Catálogo estruturado (JSON/CSV) dos livros detectados
- [ ] Fase 4 — Integração com bot de WhatsApp

## 🛠️ Tecnologias
 
- **Python 3.x**
- **OpenCV** — pré-processamento e segmentação de imagem
- **Tesseract OCR** (via `pytesseract`) — extração de texto
- *(planejado)* **Bot WhatsApp** — para envio de notificações
## 📦 Instalação
 
```bash
# Clone o repositório
git clone 
cd 
 
# Crie um ambiente virtual (recomendado)
python -m venv venv
source venv/bin/activate  # Windows: venv\Scripts\activate
 
# Instale as dependências Python
pip install -r requirements.txt
 
# Instale o Tesseract no sistema
# Windows: baixe o instalador em https://github.com/UB-Mannheim/tesseract/wiki
```
 
## ▶️ Como usar
 
```bash
python 
```
 
## 📂 Estrutura do projeto
 
```
shelfscan/
├── src/
│  
├── samples/              # imagens de teste
├── outputs/               # resultados (JSON/CSV gerados)
├── requirements.txt
└── README.md
```
 
## 🖼️ Exemplos
 
> adicionar aqui
 
## 📝 Aprendizados
 
> adicionar aqui
 
- Fase 0: ...
## 🔗 Projeto relacionado
 
Esse projeto será integrado a um bot de notificações via WhatsApp:
 
## 📄 Licença
 
Este projeto está sob a licença MIT — veja o arquivo [LICENSE](LICENSE) para detalhes.
 
## 👤 Autor
 
**Pedro DIas** — Estudante de Engenharia de Software
