echo "Instalando Ambiente de Desenvolvimento..."
nix-env -i -f build.nix --quiet
echo "Configurando Ambiente de Desenvolvimento..."
cd ./vscode
sh ./setup.sh
echo "Ambiente Pronto"