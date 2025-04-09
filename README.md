# 🚀 Instalador Wanguard para Debian 12
Este projeto contém um script automatizado para instalação do [Wanguard](https://www.andrisoft.com/products/wanguard) no **Debian 12**, ideal para ambientes ISP, datacenters e empresas que precisam de análise de tráfego NetFlow/sFlow e mitigação de DDoS.

## 📦 O que está incluído

- Script `install_wanguard.sh` com:
  - Atualização do sistema
  - Instalação de dependências
  - Instalação do pacote `.deb` do Wanguard
  - Instruções pós-instalação

## ⚠️ Pré-requisitos

- Debian 12 (limpo ou compatível)
- Acesso root ou `sudo`
- Acesso ao instalador `.deb` da Andrisoft:
  - [Área de Downloads da Andrisoft](https://www.andrisoft.com/download)
- Conectividade com a internet
- Licença válida (para ativação completa)

## 📥 Instalação

1. Baixe o pacote `.deb` da Andrisoft e copie para este diretório.

2. Execute o script:

```bash
chmod +x install_wanguard.sh
./install_wanguard.sh
