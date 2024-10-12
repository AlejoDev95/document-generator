"use strict";
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const pizzip_1 = __importDefault(require("pizzip"));
const docxtemplater_1 = __importDefault(require("docxtemplater"));
const fs = __importStar(require("fs"));
const path = __importStar(require("path"));
const ImageModule = require('docxtemplater-image-module-free');
// Cargar el archivo docx como un binario
const content = fs.readFileSync(path.resolve(__dirname, 'template.docx'), 'binary');
// Cargar el contenido de la plantilla con Pizzip
const zip = new pizzip_1.default(content);
// Configuración del módulo de imágenes
const imageOpts = {
    centered: true, // Centrar las imágenes en el documento
    getImage: (tagValue) => fs.readFileSync(tagValue), // leer la imagen desde la ruta
    getSize: () => [400, 150], // tamaño de la imagen (ancho x alto en píxeles)
};
// Inicializar Docxtemplater
const doc = new docxtemplater_1.default(zip, {
    paragraphLoop: true,
    linebreaks: true,
    modules: [new ImageModule(imageOpts)],
});
// Los datos que quieres inyectar en la plantilla
const data = {
    list: [
        {
            id: 1,
            question: "What did the boy forget to bring to the pool?",
            optionA: path.resolve(__dirname, 'option_a.png'),
            optionB: path.resolve(__dirname, 'option_b.png'),
            optionC: path.resolve(__dirname, 'option_c.png'),
        },
        {
            id: 2,
            question: "What did the boy forget to bring to the pool?",
            optionA: path.resolve(__dirname, 'option_b.png'),
            optionB: path.resolve(__dirname, 'option_c.png'),
            optionC: path.resolve(__dirname, 'option_a.png'),
        },
        {
            id: 3,
            question: "What did the boy forget to bring to the pool?",
            optionA: path.resolve(__dirname, 'option_a.png'),
            optionB: path.resolve(__dirname, 'option_b.png'),
            optionC: path.resolve(__dirname, 'option_c.png'),
        },
        {
            id: 4,
            question: "What did the boy forget to bring to the pool?",
            optionA: path.resolve(__dirname, 'option_b.png'),
            optionB: path.resolve(__dirname, 'option_c.png'),
            optionC: path.resolve(__dirname, 'option_a.png'),
        },
    ],
};
// Reemplazar los placeholders con los datos
doc.setData(data);
try {
    // Renderizar el documento (reemplaza los placeholders)
    doc.render();
    // Generar el archivo .docx
    const buf = doc.getZip().generate({ type: 'nodebuffer' });
    // Guardar el documento generado
    fs.writeFileSync(path.resolve(__dirname, 'output.docx'), buf);
    console.log('Documento generado exitosamente');
}
catch (error) {
    console.error('Error generando el documento:', error);
}
