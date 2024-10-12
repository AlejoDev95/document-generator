declare module 'docxtemplater-image-module-free' {
    interface ImageModuleOptions {
        centered?: boolean;
        getImage(tagValue: string): Buffer | Uint8Array;
        getSize(img: Buffer | Uint8Array): [number, number];
    }

    class ImageModule {
        constructor(options: ImageModuleOptions);
    }

    export = ImageModule;
}