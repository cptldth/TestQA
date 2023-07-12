﻿#language: ru

@tree

Функционал: Подготовка данных для тестирования документа заказ.

Контекст:
	Дано Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: _0001 Подготовить данные для тестирования
	И перезаполнение констант
	И создание объектов для справочника Организации
	И загрузка покупателей
	И загрузка спраочника Товары

Сценарий: _0002 Проверка поля Количество(итого) на форме документа Заказ
	И Открыть форму нового документа Заказ (Продажи)
* Добавление первой строки Товары
	И в таблице "Товары" я нажимаю на кнопку 'Добавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Товар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку 'Список'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000016' | 'Тайфун-12'    |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле "Количество"
	И в таблице "товары" в поле "Количество" я ввожу текст "10,00"
	И в таблице "Товары" я активизирую поле "Цена"
	И в таблице "товары" в поле "Цена" я ввожу текст "8500,00"
	И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения табличной части
	И реквизиты формы имеют значение:
		| 'Имя'                  | 'Значение'             | 'КакИскать' |
		| 'ТоварыИтогКоличество'      | '10'               | ''          |	
* Добавление второй строки Товары
	И в таблице "Товары" я нажимаю на кнопку 'Добавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита "Товар"
	Тогда открылось окно 'Товары'
	И я нажимаю на кнопку 'Список'
	И в таблице "Список" я перехожу к строке:
		| 'Код'       | 'Наименование' |
		| '000000016' | 'Тайфун-12'    |
	И в таблице "Список" я выбираю текущую строку
	Тогда открылось окно 'Заказ (создание) *'
	И в таблице "Товары" я активизирую поле "Количество"
	И в таблице "товары" в поле "Количество" я ввожу текст "4,00"
	И в таблице "Товары" я активизирую поле "Цена"
	И в таблице "товары" в поле "Цена" я ввожу текст "8500,00"
	И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения табличной части
	И реквизиты формы имеют значение:
		| 'Имя'                  | 'Значение'             | 'КакИскать' |
		| 'ТоварыИтогКоличество'      | '14'               | ''         |	
*  Изменение количества в первой строке
	И в таблице "Товары" я перехожу к первой строке
	И в таблице "Товары" я активизирую поле "Количество"
	И в таблице "товары" в поле "Количество" я ввожу текст "1,00"
	И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения табличной части
	И реквизиты формы имеют значение:
		| 'Имя'                  | 'Значение'             | 'КакИскать' |
		| 'ТоварыИтогКоличество'      | '5'               | ''         |	
*  Изменение цены во второй (последней) строке
	И в таблице "Товары" я перехожу к последней строке
	И в таблице "Товары" я активизирую поле "Цена"
	И в таблице "товары" в поле "Цена" я ввожу текст "8000,00"
	И в таблице "Товары" я завершаю редактирование строки
* Проверка заполнения табличной части
	И реквизиты формы имеют значение:
		| 'Имя'                  | 'Значение'             | 'КакИскать' |
		| 'ТоварыИтогКоличество'      | '5'               | ''         |	
	