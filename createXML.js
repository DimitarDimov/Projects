var doc = new ActiveXObject("MSXML.DOMDocument");
var pi = doc.createProcessingInstruction("xml", 'version="1.0" encoding="UTF-8"');
doc.appendChild(pi);

var laptops = createElement(doc, doc, 'laptops');
var laptop = createElement(doc, laptops, 'laptop');
setAttributes(laptop, {'year':'2016'});
createElementWithText(doc, laptop, 'make', 'Хуауей');
createElementWithText(doc, laptop, 'model', 'P9 Лайт');
setAttributes(model, {'serialNumber':'X1X2'});
var type = createElement(doc, laptop, 'type');
setAttributes(type, {'t':'dualSim'});
var simType = createElement(doc, laptop, 'simType');
setAttributes(simType, {'T':'nano'});
var screen = createElement(doc, laptop, 'screen');
setAttributes(screen, {'isTouch':'Y'});
var size = createElement(doc, screen, 'size');
createElementWithText(doc, size, 'inches', '5.2');
createElementWithText(doc, screen, 'technology', 'IPS LCD');
createElementWithText(doc, screen, 'resolution', '1080 x 1920');
var specifications = createElement(doc, laptop, 'specifications');
var processor = createElement(doc, specifications, 'processor');
createElementWithText(doc, processor, 'producer', 'AРМ');
createElementWithText(doc, processor, 'modelOfProcessor', 'Кортекс-A53');
createElementWithText(doc, processor, 'typeOfProcessor', 'Oкта-кор');
createElementWithText(doc, processor, 'cores', '8');
createElementWithText(doc, processor, 'frequency', '4x2.0 GHz,4x11.7 Ghz');
createElementWithText(doc, specifications, 'RAM', '2GB');
var memory = createElement(doc, specifications, 'memory');
createElementWithText(doc, memory, 'internal', '16Gb');
var externalSlot = createElement(doc, memory, 'externalSlot');
setAttributes(externalSlot, {'e':'Y'});
createElementWithText(doc, specifications, 'ports', 'микро усб, 3.5мм жак');
var battery = createElement(doc, specifications, 'battery');
createElementWithText(doc, battery, 'mAh', '3000');
createElementWithText(doc, battery, 'timeToTalk', '19 часа');
var camera = createElement(doc, specifications, 'camera');
setAttributes(camera, {'flash':'Y'});
createElementWithText(doc, camera, 'mp', '13');
var secondCam = createElement(doc, specifications, 'secondCam');
setAttributes(secondCam, {'autoFocus':'Y'});
createElementWithText(doc, camera, 'mpixels', '8');
createElementWithText(doc, specifications, 'color', 'бял, черен, златист');
var price = createElement(doc, laptop, 'price');
setAttributes(price, {'value':'479','currency':'BGN'});
createElementWithText(doc, laptop, 'description', 'Сензор за отпечатъци
      Акселерометър
      Сензор за близост
      Дигитален компас
      Светлинен сензор');
      

function createElementWithText(dom, parentNode, elementName, text) {
    var e = dom.createElement(elementName);
    parentNode.appendChild(e);
    var t = dom.createTextNode(text);
    e.appendChild(t);
    return e;
}

function createElement(dom, parentNode, elementName) {
    var e = dom.createElement(elementName);
    parentNode.appendChild(e);
    return e;
}

function setAttributes(node, attributes) {
    if (attributes) {
        for (var key in attributes) {
            node.setAttribute(key, attributes[key]);
        }
    }
}

doc.save('smartphones_gen.xml');