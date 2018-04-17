while true; do
    find . -type f -size -4096c | sed 's/[^0-9]*//g' | xargs -n 1 -I {} curl -o {}.pdf "https://babel.hathitrust.org/cgi/imgsrv/download/pdf?id=mdp.39015046801760;orient=0;size=100;seq={};attachment=0"
done
