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
```

Acesse a interface Web:
- URL: http://<IP_DO_SERVIDOR>:8080
Usuário: admin
Senha: admin

Altere a senha padrão imediatamente após o login.

🔧 Configuração Adicional
- Libere as portas no firewall:
8080 (interface web)
2055 (NetFlow)
6343 (sFlow)

- Configure seu roteador ou switch para enviar fluxos NetFlow/sFlow para o IP deste servidor.

🧠 Documentação oficial
- Consulte o manual oficial para configuração detalhada:
👉 https://www.andrisoft.com/support/manual


## 🧑‍💻 Autor
**Vanderson Diniz do Nascimento**  
Especialista em Linux, Redes, Cibersegurança e ISPs  

- 🌐 [Site pessoal](https://vandersondiniz.com.br)  
- 🏢 [ISPLAB](https://isplab.com.br)  
- 💼 [LinkedIn](https://www.linkedin.com/in/vdnascdiniz/)  
- 💻 [GitHub @vandersondiniznoc](https://github.com/vandersondiniznoc)

📄 Licença
Este repositório está sob a licença MIT. O software Wanguard é proprietário da Andrisoft e requer licenciamento.
