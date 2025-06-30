org 0x100                    ; Вказуємо, що це програма .COM
section .data
    a db 5                   ; Значення a = 5
    b db 3                   ; Значення b = 3
    c db 2                   ; Значення c = 2
    resultMsg db 'Result: $' ; Рядок для виведення результату

section .text
_start:
    mov al, [b]              ; Завантажуємо b у al
    sub al, [c]              ; Віднімаємо c
    add al, [a]              ; Додаємо a

    add al, 30h              ; Перетворюємо число в ASCII символ

    ; Виведення рядка "Result: "
    mov ah, 09h
    lea dx, resultMsg
    int 21h

    ; Виведення числа
    mov dl, al
    mov ah, 02h
    int 21h

    ; Завершення програми
    mov ax, 4c00h
    int 21h
