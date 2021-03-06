﻿
&НаКлиенте
Перем КонтекстЯдра;

&НаКлиенте
Перем Ожидаем;

#Область _ // основная процедура для юнит-тестирования xUnitFor1C

&НаКлиенте
Процедура Инициализация(КонтекстЯдраПараметр) Экспорт
	
	КонтекстЯдра = КонтекстЯдраПараметр;
	Ожидаем = КонтекстЯдра.Плагин("УтвержденияBDD");
	
КонецПроцедуры

&НаКлиенте
Процедура ЗаполнитьНаборТестов(НаборТестов) Экспорт
	
	НаборТестов.НачатьГруппу("Выполнение тестов (на клиенте)");
	НаборТестов.Добавить("ТестДолжен_ПроверитьСуммуДваИДваНаКлиенте");
	
КонецПроцедуры

#КонецОбласти

#Область _ // Блок юнит-тестов

&НаКлиенте
Процедура ТестДолжен_ПроверитьСуммуДваИДваНаКлиенте() Экспорт
	
	Ожидаем.Что(2+2).Равно(4);
	
КонецПроцедуры

#КонецОбласти

#Область _ // Служебная часть - запуск браузера

&НаКлиенте
Процедура ПриОткрытии(Отказ)
	
	Отказ = Истина;
	
    ПозицияТочки = СтрДлина(ЭтаФорма.ИмяФормы);
    Пока Сред(ЭтаФорма.ИмяФормы, ПозицияТочки, 1) <> "." Цикл ПозицияТочки = ПозицияТочки - 1; КонецЦикла; 
    ИмяФормыЛаунчер = Лев(ЭтаФорма.ИмяФормы, ПозицияТочки) + "ЗапускБраузераУФ";
	
	ПолучитьФорму(ИмяФормыЛаунчер).ЗапуститьБраузер();
	
КонецПроцедуры

#КонецОбласти

