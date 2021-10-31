#/bin/sh

case $1 in
    "inc")
        xlight add .05
    ;;
    "dec")
        xlight sub .05
    ;;
esac

percentage=$( echo "$( xlight )*100" | bc | cut -d'.' -f1 )

ramp=🌕
case $percentage in
    2[0-9]|3[0-9])
        ramp=🌔
    ;;
    4[0-9]|5[0-9])
        ramp=🌓
    ;;
    6[0-9]|7[0-9])
        ramp=🌒
    ;;
    *)
        ramp=🌑
    ;;
esac

printf '%s%s%%' $ramp $percentage
