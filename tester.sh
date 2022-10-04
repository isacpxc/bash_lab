#!/bin/bash

# author: Kelthon Alves

# tester.sh

# Cria uma pasta com arquivos txt para testar os scripts

TESTER_DIR_NAME=".test"
HIDDEN="$TESTER_DIR_NAME/.hidden"
BIN="$TESTER_DIR_NAME/bin"
DIR="$TESTER_DIR_NAME/dir"
DIRLIST=("$TESTER_DIR_NAME" "$HIDDEN" "$BIN" "$DIR")

CONFIG="$HIDDEN/.config"
SECRET="$HIDDEN/.secret"
SRCAPP="$BIN/app.c"
MKAPP="$BIN/makefile"
LOREM="$DIR/Lorem Ipsum.txt"
TXT_ONE="$TESTER_DIR_NAME/nomes.txt"
TXT_TWO="$TESTER_DIR_NAME/frutas.txt"
TXT_THREE="$TESTER_DIR_NAME/semana.txt"
FILESLIST=("$SECRET" "$SRCAPP" "$MKAPP" "$LOREM" "$TXT_ONE" "$TXT_TWO" "$TXT_THREE" "$CONFIG")

SECRET_CONTENT="This file is a secret! you must not see this message."

APP_SCRIPT=(
    "#include <stdio.h>"
    ""
    "int main () {"
    "    printf(\"Hello World!\n\");"
    "    return 0;"
    "}"
)

MKAPP_SCRIPT=(
    "compile:"
    "	gcc app.c -o ../app"
    "rm:"
    "	rm -f *.out *.exe *.o ../app"
)

LOREM_CONTENT=(
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Viverra mauris in aliquam sem fringilla. Nulla posuere sollicitudin aliquam ultrices sagittis orci. Metus vulputate eu scelerisque felis imperdiet proin fermentum. Enim nec dui nunc mattis enim ut. Vitae auctor eu augue ut lectus. Enim diam vulputate ut pharetra sit amet aliquam id. Senectus et netus et malesuada fames ac turpis egestas integer. Magna sit amet purus gravida quis blandit turpis cursus. Nulla facilisi cras fermentum odio eu feugiat pretium nibh. Enim sed faucibus turpis in eu mi bibendum neque egestas. Mauris a diam maecenas sed enim ut sem. Suscipit adipiscing bibendum est ultricies integer quis auctor elit sed. Neque egestas congue quisque egestas diam in. Morbi tristique senectus et netus et. Placerat orci nulla pellentesque dignissim enim sit. Felis donec et odio pellentesque diam volutpat. Dignissim convallis aenean et tortor at risus viverra adipiscing at. Viverra vitae congue eu consequat ac felis donec."
    ""
    "Amet massa vitae tortor condimentum lacinia quis vel eros. In hac habitasse platea dictumst quisque sagittis purus sit amet. Consectetur adipiscing elit ut aliquam purus sit. Pellentesque sit amet porttitor eget dolor morbi non. Euismod elementum nisi quis eleifend quam adipiscing. Scelerisque viverra mauris in aliquam sem fringilla ut. Quam id leo in vitae. Sit amet mattis vulputate enim nulla. Tellus cras adipiscing enim eu turpis. Ultricies integer quis auctor elit sed vulputate mi sit. Risus feugiat in ante metus dictum at tempor. At tempor commodo ullamcorper a lacus vestibulum sed arcu. Morbi leo urna molestie at elementum eu facilisis sed odio. A pellentesque sit amet porttitor eget dolor morbi non. Turpis egestas pretium aenean pharetra."
    ""
    "Non curabitur gravida arcu ac tortor dignissim convallis aenean et. Sit amet porttitor eget dolor morbi non arcu. Viverra accumsan in nisl nisi scelerisque eu ultrices. Tellus integer feugiat scelerisque varius morbi enim nunc faucibus. A cras semper auctor neque vitae tempus quam. Tempor nec feugiat nisl pretium fusce id velit. Leo integer malesuada nunc vel risus commodo viverra maecenas. Etiam non quam lacus suspendisse faucibus. Faucibus et molestie ac feugiat. At quis risus sed vulputate odio ut enim blandit volutpat."
    ""
    "Odio ut sem nulla pharetra diam sit amet nisl. Facilisis leo vel fringilla est ullamcorper eget nulla facilisi. Et netus et malesuada fames ac turpis egestas integer. Amet mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan. Eu sem integer vitae justo eget. Neque egestas congue quisque egestas. Lorem donec massa sapien faucibus. Interdum posuere lorem ipsum dolor. Risus in hendrerit gravida rutrum quisque non tellus. Nec nam aliquam sem et tortor consequat. Massa tincidunt dui ut ornare. Justo nec ultrices dui sapien eget mi proin sed libero."
    ""
    "Nunc mattis enim ut tellus elementum sagittis vitae et leo. Placerat orci nulla pellentesque dignissim. A pellentesque sit amet porttitor eget dolor morbi non arcu. Leo vel fringilla est ullamcorper. Sed arcu non odio euismod lacinia. Dolor purus non enim praesent elementum facilisis leo vel. Ut venenatis tellus in metus vulputate eu scelerisque. Elit at imperdiet dui accumsan sit amet nulla facilisi morbi. Nullam ac tortor vitae purus faucibus ornare suspendisse. Diam in arcu cursus euismod quis viverra. Lectus arcu bibendum at varius vel pharetra."
)

TXT_ONE_CONTENT=(
    "Talita significa \"menina\", \"moça\", \"garotinha\", \"pequena garota\" ou \"criança que renasceu\"."
    "Filipe significa \"amigo dos cavalos\", \"o que gosta dos cavalos\",\"o que ama a guerra\"."
    "Isaque significa \"ele irá rir\", \"filho da alegria\", \"como Deus ri!\"."
    "Adriano significa \"natural da Ádria\", \"homem de Ádria\"."
    "Francisco significa \"francês livre\", \"aquele que vem da França\", \"homem livre\"."
    "Ian significa \"Deus é cheio de graça\", \"agraciado por Deus\", \"a graça e misericórdia de Deus\" e \"Deus perdoa\"."
    "Sandra significa \"protetora da humanidade\", \"defensora do homem\", \"a que brilha sobre os homens\"."
    "Agnes significa \"pura\", \"casta\", \"santa\", \"dócil como um cordeiro\"."
    "Natan significa \"dádiva\", \"dom\" ou \"presente de Deus\"."
    "Maria significa \"senhora soberana\", \"vidente\" ou \"a pura\"."
    "Ana significa \"graciosa\" ou \"cheia de graça\"."
    "Carolina significa \"mulher do povo\", \"mulher doce\"."
    "Fernanda significa \"ousada para atingir a paz\", \"a que ousa viajar\", \"viajante corajosa\"."
    "Breno significa \"chefe\", \"líder\"; \"sopro criador\", \"superior\"; \"nobre\"."
    "Raul significa \"lobo conselheiro\", \"o que segue o conselho dos lobos\", \"combatente prudente\"."
    "Aruna significa \"castanho avermelhado\", \"aurora\", \"o nascente\", \"o nascer do dia\", \"o começo\", \"esperança\"."
    "Patrícia significa \"nobre\", \"de classe nobre\", \"da mesma pátria\" ou \"compatriota\"."
    "Bruna significa \"morena\", \"bronzeada\", \"marrom\"; \"da cor do fogo\"."
)

TXT_TWO_CONTENT=(
    "Abacate"
    "Abacaxi"
    "Abiu"
    "Abricó"
    "Abrunho"
    "Açaí"
    "Acerola"
    "Akee"
    "Alfarroba"
    "Ameixa"
    "Amêndoa"
    "Amora"
    "Ananás"
    "Anona"
    "Araçá"
    "Arando"
    "Araticum"
    "Ata"
    "Atemoia"
    "Avelã"
    "Babaco"
    "Babaçu"
    "Bacaba"
    "Bacuri"
    "Bacupari"
    "Banana"
    "Baru"
    "Bergamota"
    "Biribá"
    "Buriti"
    "Butiá"
    "Cabeludinha"
    "Cacau"
    "Cagaita"
    "Caimito"
    "Cajá"
    "Caju"
    "Calabaça"
    "Calabura"
    "Calamondin"
    "Cambucá"
    "Cambuci"
    "Camu-camu"
    "Caqui"
    "Carambola"
    "Carnaúba"
    "Castanha"
    "Castanha-do-pará"
    "Cereja"
    "Ciriguela"
    "Ciruela"
    "Coco"
    "Cranberry"
    "Cupuaçu"
    "Damasco"
    "Dekopon"
    "Dendê"
    "Dióspiro"
    "Dovyalis"
    "Durião"
    "Embaúba"
    "Embaubarana"
    "Engkala"
    "Escropari"
    "Esfregadinha"
    "Figo"
    "Framboesa"
    "Fruta-do-conde"
    "Fruta-pão"
    "Feijoa"
    "Figo-da-índia"
    "Fruta-de-cedro"
    "Fruta-de-lobo"
    "Fruta-do-milagre"
    "Fruta-de-tatu"
    "Fruta-jujuba"
    "Gabiroba"
    "Glicosmis"
    "Goiaba"
    "Granadilla"
    "Gravatá"
    "Graviola"
    "Groselha"
    "Grumixama"
    "Guabiju"
    "Guabiroba"
    "Guaraná"
    "Hawthorn"
    "Heisteria"
    "Hilocéreo"
    "Ibacurupari"
    "Ilama"
    "Imbe"
    "Imbu"
    "Inajá"
    "Ingá"
    "Inharé"
    "Jabuticaba"
    "Jaca"
    "Jambo"
    "Jambolão"
    "Jamelão"
    "Jaracatiá"
    "Jatobá"
    "Jenipapo"
    "Jerivá"
    "Juá"
    "Kiwi"
    "Kumquat"
    "Kinkan"
    "Kino"
    "Kiwano"
    "Kabosu"
    "Karité"
    "Laranja"
    "Limão"
    "Lima"
    "Lichia"
    "Longan"
    "Lucuma"
    "Lacucha"
    "Lulo"
    "Lobeira"
    "Langsat"
    "Laranja-de-pacu"
    "Mabolo"
    "Maçã"
    "Macadâmia"
    "Macaúba"
    "Mamão"
    "Mamey"
    "Mamoncillo"
    "Maná-cubiu"
    "Manga"
    "Mangaba"
    "Mangostão"
    "Maracujá"
    "Marang"
    "Marmelo"
    "Marolo"
    "Marula"
    "Massala"
    "Melancia"
    "Melão"
    "Meloa"
    "Mexerica"
    "Mirtilo"
    "Morango"
    "Murici"
    "Naranjilla"
    "Nectarina"
    "Nêspera"
    "Noni"
    "Noz"
    "Noz-pecã"
    "Noz-macadâmia"
    "Oiti"
    "Oxicoco"
    "Orangelo"
    "Pera"
    "Pêssego"
    "Pitanga"
    "Pinha"
    "Pitaia"
    "Pitomba"
    "Pitangatuba"
    "Pindaíba"
    "Pequi"
    "Pequiá"
    "Physalis"
    "Pulasan"
    "Pomelo"
    "Pupunha"
    "Puçá"
    "Patauá"
    "Pajurá"
    "Pixirica"
    "Pistache"
    "Quina"
    "Quiuí"
    "Romã"
    "Rambai"
    "Rambutão"
    "Rukam"
    "Saguaraji"
    "Salak"
    "Santol"
    "Sapota"
    "Sapoti"
    "Sapucaia"
    "Saputá"
    "Seriguela"
    "Sorvinha"
    "Tangerina"
    "Tamarindo"
    "Tâmara"
    "Toranja"
    "Tucumã"
    "Taiuva"
    "Tapiá"
    "Tarumã"
    "Tangor"
    "Tucujá"
    "Uva"
    "Umbu"
    "Uvaia"
    "Uchuva"
    "Umê"
    "Uxi"
    "Vacínio"
    "Veludo"
    "Vergamota"
    "Wampi"
    "Xixá"
    "Yamamomo"
    "Yuzu"
    "Zimbro"
)

TXT_THREE_CONTENT="domingo, segunda-feira, terça-feira, quarta-feira, quinta-feira, sexta-feira, sábado"

# verificando a existencia do gcc e compilando executavel
tmkdir() {
    for i in "${DIRLIST[@]}"; do
        if [[ ! -e "$i" ]]; then
            mkdir -p "$i"
            echo "created: $i [folder]"
        fi
    done
}

ttouch() {
    for i in "${FILESLIST[@]}"; do
        if [[ ! -e "$i" ]]; then
            touch "$i"
            echo "created: $i [file]"
        fi
    done
}

twrite() {
    for i in "${!FILESLIST[@]}"; do
        touch  "${FILESLIST[$i]}"
        echo -n > "${FILESLIST[$i]}"
    done

    for i in "${SECRET_CONTENT[@]}"; do
        echo "$i" >> "$SECRET"
    done

    for i in "${APP_SCRIPT[@]}"; do
        echo "$i" >> "$SRCAPP"
    done

    for i in "${MKAPP_SCRIPT[@]}"; do
        echo "$i" >> "$MKAPP"
    done

    for i in "${LOREM_CONTENT[@]}"; do
        echo "$i" >> "$LOREM"
    done

    for i in "${TXT_ONE_CONTENT[@]}"; do
        echo "$i" >> "$TXT_ONE"
    done

    for i in "${TXT_TWO_CONTENT[@]}"; do
        echo "$i" >> "$TXT_TWO"
    done

    for i in "${TXT_THREE_CONTENT[@]}"; do
        echo "$i" >> "$TXT_THREE"
    done
}

tapp() {
    if [[ ! -e $SRCAPP ]]; then

        COMPILER=$(dpkg --get-selections | grep ^"$1" | cut -d "$(printf '\t')" -f 1 | head -n 1)

        if [[ $COMPILER ]]; then 
            echo "compiler=$COMPILER" >> "$CONFIG"
            echo "compiler=$COMPILER"
            echo "$CONFIG"
            make -C .test/bin/
        else 
            echo "error: $COMPILER not found"
            echo "warning: the tester was unable to generate the executable file"
            echo "warning: make sure you wrote it correctly or install $COMPILER"
        fi
    fi
}

trm() {
    rm -rdf "$TESTER_DIR_NAME"
}

trestore() {
    COMPILER=$(grep -E ^compiler "$CONFIG" | cut -d "=" -f 2)
    trm
    tmkdir
    ttouch
    twrite
    tapp "$COMPILER"

}

ttester() {
    tmkdir
    ttouch
    twrite
    
    if [[ $1 && $1 != "" ]]; then
        tapp "$1"
    else
        tapp "gcc"
    fi
}

VERSION="1.3"

if [[ $1 ]]; then
    case $1 in

        "-h"|"--help")
        echo "
Cria uma pasta com arquivos e pastas para teste de shell scripts

Usage: $0 [Options...]

Options:

    -a              compila o app em executavel e seta o compilador
    -d              apaga a pasta de testes
    -m              cria a pasta de testes
    -r              restaura a pasta de testes e seus arquivos
    -t              cria os arquivos
    -w              escreve o conteudo dos arquivos
    -h, --help      Exibe essa ajuda.
    -v, --version   Exibe a versão.
        "
        ;;


        "-v"|"--version")
            echo "$VERSION"
        ;;
        "-a")
            if [[ $2 ]]; then
                tapp "$2" 
                echo "app ready!"
            else
                echo "invalid argument"
            fi
        ;;

        "-d")
            trm
            echo "clean!"
        ;;

        "-m")
            tmkdir
        ;;
        
        "-r")
            trestore
            echo "restored!"
        ;;

        "-t")
            ttouch
        ;;

        "-w")
            twrite
            echo "done!"
        ;;

        *)
            ttester ""
        ;;
    esac
else
    ttester ""
fi