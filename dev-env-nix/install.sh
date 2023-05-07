echo "Instalando Ambiente de Desenvolvimento..."
nix-env -if build.nix --quiet > /dev/null 2>&1
echo "Configurando Ambiente de Desenvolvimento..."
cd ./vscode
sh ./setup.sh
echo "Ambiente Pronto"