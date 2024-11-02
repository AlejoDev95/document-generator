import * as fs from "fs";
import * as path from "path";
import PizZip from "pizzip";
import Docxtemplater from "docxtemplater";
const ImageModule = require("docxtemplater-image-module-free");

// Cargar el archivo docx como un binario
const content = fs.readFileSync(
  path.resolve(__dirname, "template.docx"),
  "binary"
);

// Cargar el contenido de la plantilla con Pizzip
const zip = new PizZip(content);

// Configuración del módulo de imágenes
const imageOpts = {
  centered: true, // Centrar las imágenes en el documento
  getImage: (tagValue: string) => fs.readFileSync(tagValue), // leer la imagen desde la ruta
  getSize: () => [400, 150], // tamaño de la imagen (ancho x alto en píxeles)
};

// Inicializar Docxtemplater
const doc = new Docxtemplater(zip, {
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
      optionA: path.resolve(__dirname, "option_a.png"),
      optionB: path.resolve(__dirname, "option_b.png"),
      optionC: path.resolve(__dirname, "option_c.png"),
    },
    {
      id: 2,
      question: "What did the boy forget to bring to the pool?",
      optionA: path.resolve(__dirname, "option_b.png"),
      optionB: path.resolve(__dirname, "option_c.png"),
      optionC: path.resolve(__dirname, "option_a.png"),
    },
    {
      id: 3,
      question: "What did the boy forget to bring to the pool?",
      optionA: path.resolve(__dirname, "option_a.png"),
      optionB: path.resolve(__dirname, "option_b.png"),
      optionC: path.resolve(__dirname, "option_c.png"),
    },
    {
      id: 4,
      question: "What did the boy forget to bring to the pool?",
      optionA: path.resolve(__dirname, "option_b.png"),
      optionB: path.resolve(__dirname, "option_c.png"),
      optionC: path.resolve(__dirname, "option_a.png"),
    },
  ],
};

// Reemplazar los placeholders con los datos
doc.setData(data);

try {
  // Renderizar el documento (reemplaza los placeholders)
  doc.render();

  // Generar el archivo .docx
  const buf = doc.getZip().generate({ type: "nodebuffer" });

  // Guardar el documento generado
  fs.writeFileSync(path.resolve(__dirname, "output.docx"), buf);

  console.log("Documento generado exitosamente");
} catch (error) {
  console.error("Error generando el documento:", error);
}
