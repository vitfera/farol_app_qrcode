# Farol App QR Code

Página estática para redirecionamento automático para as lojas de aplicativos.

## Funcionalidades

- Detecta automaticamente o sistema operacional (iOS/Android)
- Redireciona para a loja apropriada:
  - **iOS**: App Store
  - **Android**: Google Play
- Fallback com botões manuais caso a detecção falhe

## Deploy com Coolify

Este projeto está pronto para deploy no Coolify usando Docker.

### Requisitos
- Coolify instalado e configurado
- Repositório Git conectado

### Como fazer deploy

1. No Coolify, adicione um novo recurso
2. Selecione "Docker" como tipo
3. Conecte este repositório GitHub
4. Configure a porta **80** (Nginx)
5. Deploy automático será feito a cada push na branch `main`

O Dockerfile usa Nginx Alpine para servir a página HTML de forma leve e eficiente.

## Desenvolvimento Local

### Com Docker
```bash
docker build -t farol-qrcode .
docker run -p 8080:80 farol-qrcode
```
Acesse: http://localhost:8080

### Com MAMP/XAMPP
Basta abrir o arquivo `index.html` no navegador ou servir via servidor local.

## URLs das Lojas

- **App Store**: https://apps.apple.com/br/app/farol/id6756614790
- **Google Play**: https://play.google.com/store/apps/details?id=br.com.farol.cultura&hl=pt_BR

## Autor

Victor Ferreira - vitfera@hotmail.com
