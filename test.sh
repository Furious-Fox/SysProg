#!/bin/bash

find_name()
{
    echo " Введите каталог для поиска: "
    read dir

    echo " Введите имя файла: "
    read file_name
    echo " Результаты поиска: "
    find $dir -name "$file_name"
    next_step 1
}

find_size()
{
    echo " Введите каталог для поиска: "
    read dir

    echo " Выберите размерность:"
    echo " 1) Bytes"
    echo " 2) KiB"
    echo " 3) MiB"
    echo " 4) GiB"

    read doing 

    case $doing in
    1)
        size_name="c"
    ;;
    2)
        size_name="k"
    ;;
    3)
        size_name="M"
    ;;
    4)
       size_name="G"
    ;;
    *) 
        echo " Введено неправильное действие"
        next_step 3
    esac #окончание оператора case.

    echo " Введите размер файла: "
    read file_size
    echo " Результаты поиска: "
    find $dir -size +$file_size$size_name
    next_step 1
}

next_step()
{
    echo " Желаете продолжить? (Y/n)"
    read answer
    if [[ -z $answer ]];
    then
        answer='y'
    fi 
   
    if [[ "$answer" = 'y' ]] ||
    [[ "$answer" = 'Y' ]] ||
    [[ "$answer" = 'yes' ]] ||
    [[ "$answer" = 'д' ]];
    then
        case $1 in
        1)
        main_menu
        ;;
        2)
        
        ;;
        3)
            find_size
        ;;
        *) 
        exit -1
    esac #окончание оператора case.

    elif [[ "$answer" = 'n' ]] ||
    [[ "$answer" = 'N' ]] ||
    [[ "$answer" = 'no' ]] ||
    [[ "$answer" = 'н' ]];
    then
        echo " Выход из программы"
        exit 0
    else
        echo " Фиаско! Скрипт будет завершен."
        exit -1
    fi

}

main_menu()
{
    echo " Выберите действие:"
    echo " 1) Поиск по имени файла"
    echo " 2) Поиск по размеру файла"
    echo " 0) Выход"
    
    read doing 

    case $doing in
    1)
        find_name
    ;;
    2)
        find_size
    ;;
    0)
        echo " Выход из программы"
        exit 0
    ;;
    *) 
        echo " Введено неправильное действие"
        next_step 1
    esac #окончание оператора case.

}

echo "Обёртка для утилиты find"
echo "Автор: Владислав Загородский"
echo "Скрипт предназначен для поиска файлов с помошью утилиты find по имени или размеру"
echo "------------------------------"
main_menu 



