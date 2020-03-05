#!/bin/bash

find_name()
{
    echo "Введите каталог для поиска: "
    read dir

    echo "Введите имя файла: "
    read file_name
    
    find $dir -name $file_name
}

find_size()
{
    echo "Введите каталог для поиска: "
    read dir

    echo "Введите размер файла: "
    read file_size

    find $dir -size $file_size
}

main_menu()
{
    echo "Выберите действие:"
    echo "1) Поиск по имени файла"
    echo "2) Поиск по размеру файла"
    echo "0) Выход"
    
    read doing 

    case $doing in
    1)
        find_name
    ;;
    2)
        find_size
    ;;
    0)
        exit 0
    ;;
    *) 
    echo "Введено неправильное действие"
    esac #окончание оператора case.

}





