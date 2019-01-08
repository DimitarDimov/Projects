# Smartphones
ДОКУМЕНТАЦИЯ
към проект по „XML програмиране“ на тема:
 
„Магазин за смартфони“
      
 
1.	Описание на проекта
Проектът цели да представи компонентите на един смартфон. Елементът смартфон е съставен от (марка, модел, тип, тип на симкартата, екран, спецификации,  цена, описание, снимки?). Елементът екран е съставен от (размер, технология, резолюция). Елементът размер има (инчове). Елементът спецификации е съставен от (процесор, оперативна памет, памет, портове, батерия, камера, втора камера,цвят), а процесорът има (проиводител, модел на процесора, тип на процесора,  ядра, честота), паметта- (вътрешна,допълнителeн слот) и батерията- (капацитет, време за разговори), а камерата и втората камера-(мегапиксели).

2.	Включени файлове към проекта и описание.
-	smartphones.dtd – Файл, който съдържа код - описанието на елементите и атрибутите, които са в XML документите. 
-	XML документите, които са валидирани спрямо smartphones.dtd. 
-	createXML.js – Файл, който е съставен на JavaScript като чрез DOM се генерира валиден XML документ.
-	xmlToHtmlN.xsl – Файл, който трансформира валиден XML документ към валиден HTML такъв. Чрез „N“ в името показваме номера на документа и се приемат стойности от 1 до 4.
-	xmlToHtmlN.xml – Файл, който има валиден XML документ, в последствие се трансформира в HTML. Чрез „N“ в името показваме номера на документа и се приемат стойности от 1 до 4.
-	xmlToXmlN.xsl – Файл, който трансформира валиден XML документ към друг валиден XML. Чрез „N“ в името показваме номера на документа и се приемат стойности 1 и 2.
-	xmlToXmlX.xml – Файл, в който има валиден XML документ и се трансформира в XML. Чрез „N“ в името показваме номера на документа и се приемат стойности 1 и 2.
-	xmlToTextX.xsl – Файл, който трансформира валиден XML документ към текстов документ. Чрез „N“ в името показваме номера на документа и се приемат стойности 1 и 2.
-	xmlToTextX.xml – Файл, в който има валиден XML документ и в последствие се трансформира в текст. Чрез „N“ в името показваме номера на документа и се приемат стойности 1 и 2.



3.	smartphones.dtd

<?xml version="1.0" encoding="UTF-8"?>

<!ELEMENT smartphones (smartphone+)>
    
    <!ELEMENT smartphone (make, model, type, simType, screen, specifications, price, description, images?)>
    <!ATTLIST smartphone year NMTOKEN #REQUIRED >
        <!ELEMENT make (#PCDATA) >
        <!ELEMENT model (#PCDATA)>
            <!ATTLIST model serialNumber ID #REQUIRED >   
        <!ELEMENT type EMPTY>
            <!ATTLIST type t (sigleSim|dualSim) #REQUIRED>
        <!ELEMENT simType EMPTY>
            <!ATTLIST simType T (standart|micro|nano) #REQUIRED>
        <!ELEMENT screen (size, technology, resolution)>
            <!ATTLIST screen isTouch (Y|N) #REQUIRED >
            <!ELEMENT size (inches)>
                <!ELEMENT inches (#PCDATA)>
            <!ELEMENT technology (#PCDATA)>
            <!ELEMENT resolution (#PCDATA)>
        <!ELEMENT specifications (processor, RAM, memory, ports, battery, camera, secondCam, color)>
            <!ELEMENT processor (producer, modelOfProcessor, typeOfProcessor, cores, frequency)>
                <!ELEMENT producer (#PCDATA)>
                <!ELEMENT modelOfProcessor (#PCDATA)>
                <!ELEMENT typeProcessor (#PCDATA)>
                <!ELEMENT cores (#PCDATA)>
                <!ELEMENT frequency (#PCDATA)>
            <!ELEMENT RAM (#PCDATA)>
            <!ELEMENT memory (internal, externalSlot)>
                <!ELEMENT internal (#PCDATA)>
                <!ELEMENT externalSlot EMPTY>
                <!ATTLIST externalSlot e (Y|N) #REQUIRED>
            <!ELEMENT ports (#PCDATA)>
            <!ELEMENT battery (mAh, timeTalk)>
                <!ELEMENT mAh (#PCDATA)>
                <!ELEMENT timeTalk (#PCDATA)>
            <!ELEMENT camera (mp)>
                <!ATTLIST camera flash (Y|N) #REQUIRED >
                <!ELEMENT mp (#PCDATA)>
            <!ELEMENT secondCam (mpixels)>
                <!ATTLIST secondCam autoFocus (Y|N) #REQUIRED >
                <!ELEMENT mpixels (#PCDATA)>
            <!ELEMENT color (#PCDATA)>
        <!ELEMENT price EMPTY>
        <!ATTLIST price value NMTOKEN #REQUIRED 
                        currency NMTOKEN #FIXED "BGN">
       <!ELEMENT description (#PCDATA)>
       <!ELEMENT images (image+)>
            <!ELEMENT image (#PCDATA)>

4.	Описание на елементите в smartphones.dtd

-	smartphones – основен елемент на всеки XML документ.
-	make – представя  информация за марката на смартфона.
-	model – представя информация за модела на смартфона.
-	type – представя информация за типа на смартфона – singleSim или dualSim.
-	simType – представя информация за типа на симкартата на смартфона – standart, micro или nano.
-	screen – представя информация за екрана на смартфона. 
-	inch – представя  информация колко инча е екранът.
-	technology – представя  информация за технологията,която е ползвана за екрана.
-	resolution – представя  информация за резолюцията на екрана.
-	specifications – представя  информация за спецификациите на смартфона.
-	processor – представя  информация за процесора на лаптопа.
-	producer – представя информация за производителя на процесора.
-	modelOfProcessor – представя  информация за модела на процесора.
-	typeOfProcessor – представя информация за типа на процесора.
-	cores – представя  информация за ядрата на процесора.
-	frequency – представя  информация за честотата на процесора .
-	RAM – представя  информация за операционната памет на смартфона.
-	memory – представя  информация за паметта на смартфона.
-	internal– представя  информация за вътрешната памет.
-	ports – представя информация за вида портове на смартфона. 
-	battery – представя  информация за батерията на смартфона.
-	mAh – представя информация за капацитета на батерията.
-	timeTalk – представя  информация за живота на батерията при разговор.
-	camera -  – представя  информация за камерата на смартфона.
-	mp- – представя  информация за количеството на мегапикселите на камерата.
-	secondCam  – представя  информация за втората камера.
-	mpixels – представя  информация за количеството на мегапикселите на втората камера.
-	color- представя информазия за цвета на смартфона.
-	price – представя  информация за цената на лаптопа.
-	description – представя допълнителна информация като описание.
-	images – има линкове към снимки на смартфона.
-	image – има линк към дадена снимка на смартфона.

5.	Описание на атрибутите в smartphones.dtd

-	year – атрибут на елемента smartphone. Показва годината на производство на смартфона. Въвеждането е задължително.
-	serialNumber – атрибут на елемента model. Това е идентификационният номер на всеки от смартфоните. Въвеждането е задължително.
-	t – атрибут на елемента type. Показва типа на  смартфона. Въвеждането е задължително като се избира между singleSim и dualSim . 
-	T – атрибут на елемента simType. Показва типа на симкартата  смартфона. Въвеждането е задължително като се избира между standart, micro и nano . 
-	isTouch – атрибут на елемента screen. Показва дали смартфона е с тъчскрийн. Въвеждането е задължително като се избира между Y (да) и N (не).
-	еxternalSlot – атрибут на елемента memoty. Показва дали има допълнителен слот за карта памет смартфона. Въвеждането е задължително като се избира между Y (да) и N (не).
-	flash - атрибут на елемента camera. Показва дали камерата има светкавица. Въвеждането е задължително като се избира между Y (да) и N (не).
-	autofocus– атрибут на елемента secondCam. Показва дали втората камера има автоматичен фокус. Въвеждането е задължително като се избира между Y (да) и N (не).
-	value – атрибут на елемента price. Показва цената на смартфона в магазина. Въвежда се задължително.
-	currency – атрибут на елемента price. Това е валутата на цената. Тя е фиксирана в левове - BGN. 
