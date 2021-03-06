﻿
Перем КонтекстЯдра;
Перем Ожидаем;

#Область _ // основная процедура для юнит-тестирования xUnitFor1C

Процедура Инициализация(КонтекстЯдраПараметр) Экспорт
	КонтекстЯдра = КонтекстЯдраПараметр;
	Ожидаем = КонтекстЯдра.Плагин("УтвержденияBDD");
КонецПроцедуры

Процедура ЗаполнитьНаборТестов(НаборТестов) Экспорт
	
	НаборТестов.НачатьГруппу("Выполнение тестов (на сервере)");
	
	НаборТестов.Добавить("ТестДолжен_ПроверитьСуммуДваИДва");
	
	// Подробнее тут: "https://github.com/xDrivenDevelopment/xUnitFor1C/wiki/Сценарные тесты сценарии в виде связанных и последовательных шагов"
	
КонецПроцедуры

Процедура ПередЗапускомТеста() Экспорт
	
	НачатьТранзакцию();
	
КонецПроцедуры

Процедура ПослеЗапускаТеста() Экспорт
	
	Если ТранзакцияАктивна() Тогда
		ОтменитьТранзакцию();
	КонецЕсли;
	
КонецПроцедуры

Процедура ПередЗапускомТеста_СОшибкой() Экспорт
КонецПроцедуры

Процедура ПослеЗапускаТеста_СОшибкой() Экспорт
КонецПроцедуры

#КонецОбласти

#Область _ // Блок юнит-тестов

Процедура ТестДолжен_ПроверитьСуммуДваИДва() Экспорт
	
	Ожидаем.Что(2+2).Равно(4);
	
	// Подробнее тут: "https://github.com/xDrivenDevelopment/xUnitFor1C/wiki/Текучие (fluent) утверждения"
	
КонецПроцедуры

#КонецОбласти

