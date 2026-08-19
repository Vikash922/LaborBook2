package com.itextpdf.p017io.image;

import com.itextpdf.p017io.codec.CCITTG4Encoder;
import com.itextpdf.p017io.codec.TIFFFaxDecoder;
import com.itextpdf.p017io.exceptions.IOException;
import com.itextpdf.p017io.util.UrlUtil;
import java.awt.Color;
import java.awt.Image;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class ImageDataFactory {
    private ImageDataFactory() {
    }

    public static ImageData create(byte[] bArr, boolean z) {
        return createImageInstance(bArr, z);
    }

    public static ImageData create(byte[] bArr) {
        return create(bArr, false);
    }

    public static ImageData create(URL url, boolean z) {
        return createImageInstance(url, z);
    }

    public static ImageData create(URL url) {
        return create(url, false);
    }

    public static ImageData create(String str, boolean z) throws MalformedURLException {
        return create(UrlUtil.toURL(str), z);
    }

    public static ImageData create(String str) throws MalformedURLException {
        return create(str, false);
    }

    public static ImageData create(int i, int i2, boolean z, int i3, int i4, byte[] bArr, int[] iArr) {
        if (iArr != null && iArr.length != 2) {
            throw new IOException(IOException.TransparencyLengthMustBeEqualTo2WithCcittImages);
        }
        if (i3 != 256 && i3 != 257 && i3 != 258) {
            throw new IOException(IOException.CcittCompressionTypeMustBeCcittg4Ccittg3_1dOrCcittg3_2d);
        }
        if (z) {
            TIFFFaxDecoder.reverseBits(bArr);
        }
        RawImageData rawImageData = new RawImageData(bArr, ImageType.RAW);
        rawImageData.setTypeCcitt(i3);
        rawImageData.height = i2;
        rawImageData.width = i;
        rawImageData.colorEncodingComponentsNumber = i4;
        rawImageData.transparency = iArr;
        return rawImageData;
    }

    public static ImageData create(int i, int i2, int i3, int i4, byte[] bArr, int[] iArr) {
        if (iArr != null && iArr.length != i3 * 2) {
            throw new IOException(IOException.TransparencyLengthMustBeEqualTo2WithCcittImages);
        }
        if (i3 == 1 && i4 == 1) {
            return create(i, i2, false, 256, 1, CCITTG4Encoder.compress(bArr, i, i2), iArr);
        }
        RawImageData rawImageData = new RawImageData(bArr, ImageType.RAW);
        rawImageData.height = i2;
        rawImageData.width = i;
        if (i3 != 1 && i3 != 3 && i3 != 4) {
            throw new IOException(IOException.ComponentsMustBe1_3Or4);
        }
        if (i4 != 1 && i4 != 2 && i4 != 4 && i4 != 8) {
            throw new IOException(IOException.BitsPerComponentMustBe1_2_4or8);
        }
        rawImageData.colorEncodingComponentsNumber = i3;
        rawImageData.bpc = i4;
        rawImageData.data = bArr;
        rawImageData.transparency = iArr;
        return rawImageData;
    }

    public static ImageData create(Image image, Color color) throws java.io.IOException {
        return create(image, color, false);
    }

    public static ImageData create(Image image, Color color, boolean z) throws java.io.IOException {
        return AwtImageDataFactory.create(image, color, z);
    }

    public static ImageData createBmp(URL url, boolean z) {
        validateImageType(url, ImageType.BMP);
        BmpImageData bmpImageData = new BmpImageData(url, z);
        BmpImageHelper.processImage(bmpImageData);
        return bmpImageData;
    }

    public static ImageData createBmp(byte[] bArr, boolean z) {
        if (z || ImageTypeDetector.detectImageType(bArr) == ImageType.BMP) {
            BmpImageData bmpImageData = new BmpImageData(bArr, z);
            BmpImageHelper.processImage(bmpImageData);
            return bmpImageData;
        }
        throw new IllegalArgumentException("BMP image expected.");
    }

    public static GifImageData createGif(byte[] bArr) {
        validateImageType(bArr, ImageType.GIF);
        GifImageData gifImageData = new GifImageData(bArr);
        GifImageHelper.processImage(gifImageData);
        return gifImageData;
    }

    public static ImageData createGifFrame(URL url, int i) {
        return createGifFrames(url, new int[]{i}).get(0);
    }

    public static ImageData createGifFrame(byte[] bArr, int i) {
        return createGifFrames(bArr, new int[]{i}).get(0);
    }

    public static List<ImageData> createGifFrames(byte[] bArr, int[] iArr) {
        validateImageType(bArr, ImageType.GIF);
        return processGifImageAndExtractFrames(iArr, new GifImageData(bArr));
    }

    public static List<ImageData> createGifFrames(URL url, int[] iArr) {
        validateImageType(url, ImageType.GIF);
        return processGifImageAndExtractFrames(iArr, new GifImageData(url));
    }

    public static List<ImageData> createGifFrames(byte[] bArr) {
        validateImageType(bArr, ImageType.GIF);
        GifImageData gifImageData = new GifImageData(bArr);
        GifImageHelper.processImage(gifImageData);
        return gifImageData.getFrames();
    }

    public static List<ImageData> createGifFrames(URL url) {
        validateImageType(url, ImageType.GIF);
        GifImageData gifImageData = new GifImageData(url);
        GifImageHelper.processImage(gifImageData);
        return gifImageData.getFrames();
    }

    public static ImageData createJbig2(URL url, int i) {
        if (i < 1) {
            throw new IllegalArgumentException("The page number must be greater than 0");
        }
        validateImageType(url, ImageType.JBIG2);
        Jbig2ImageData jbig2ImageData = new Jbig2ImageData(url, i);
        Jbig2ImageHelper.processImage(jbig2ImageData);
        return jbig2ImageData;
    }

    public static ImageData createJbig2(byte[] bArr, int i) {
        if (i < 1) {
            throw new IllegalArgumentException("The page number must be greater than 0");
        }
        validateImageType(bArr, ImageType.JBIG2);
        Jbig2ImageData jbig2ImageData = new Jbig2ImageData(bArr, i);
        Jbig2ImageHelper.processImage(jbig2ImageData);
        return jbig2ImageData;
    }

    public static ImageData createJpeg(URL url) throws Throwable {
        validateImageType(url, ImageType.JPEG);
        JpegImageData jpegImageData = new JpegImageData(url);
        JpegImageHelper.processImage(jpegImageData);
        return jpegImageData;
    }

    public static ImageData createJpeg(byte[] bArr) throws Throwable {
        validateImageType(bArr, ImageType.JPEG);
        JpegImageData jpegImageData = new JpegImageData(bArr);
        JpegImageHelper.processImage(jpegImageData);
        return jpegImageData;
    }

    public static ImageData createJpeg2000(URL url) {
        validateImageType(url, ImageType.JPEG2000);
        Jpeg2000ImageData jpeg2000ImageData = new Jpeg2000ImageData(url);
        Jpeg2000ImageHelper.processImage(jpeg2000ImageData);
        return jpeg2000ImageData;
    }

    public static ImageData createJpeg2000(byte[] bArr) {
        validateImageType(bArr, ImageType.JPEG2000);
        Jpeg2000ImageData jpeg2000ImageData = new Jpeg2000ImageData(bArr);
        Jpeg2000ImageHelper.processImage(jpeg2000ImageData);
        return jpeg2000ImageData;
    }

    public static ImageData createPng(URL url) throws Throwable {
        validateImageType(url, ImageType.PNG);
        PngImageData pngImageData = new PngImageData(url);
        PngImageHelper.processImage(pngImageData);
        return pngImageData;
    }

    public static ImageData createPng(byte[] bArr) throws Throwable {
        validateImageType(bArr, ImageType.PNG);
        PngImageData pngImageData = new PngImageData(bArr);
        PngImageHelper.processImage(pngImageData);
        return pngImageData;
    }

    public static ImageData createTiff(URL url, boolean z, int i, boolean z2) throws Throwable {
        validateImageType(url, ImageType.TIFF);
        TiffImageData tiffImageData = new TiffImageData(url, z, i, z2);
        TiffImageHelper.processImage(tiffImageData);
        return tiffImageData;
    }

    public static ImageData createTiff(byte[] bArr, boolean z, int i, boolean z2) throws Throwable {
        validateImageType(bArr, ImageType.TIFF);
        TiffImageData tiffImageData = new TiffImageData(bArr, z, i, z2);
        TiffImageHelper.processImage(tiffImageData);
        return tiffImageData;
    }

    public static ImageData createRawImage(byte[] bArr) {
        return new RawImageData(bArr, ImageType.RAW);
    }

    public static boolean isSupportedType(byte[] bArr) {
        if (bArr == null) {
            return false;
        }
        return isSupportedType(ImageTypeDetector.detectImageType(bArr));
    }

    public static boolean isSupportedType(URL url) {
        if (url == null) {
            return false;
        }
        return isSupportedType(ImageTypeDetector.detectImageType(url));
    }

    public static boolean isSupportedType(ImageType imageType) {
        return imageType == ImageType.GIF || imageType == ImageType.JPEG || imageType == ImageType.JPEG2000 || imageType == ImageType.PNG || imageType == ImageType.BMP || imageType == ImageType.TIFF || imageType == ImageType.JBIG2;
    }

    /* JADX INFO: renamed from: com.itextpdf.io.image.ImageDataFactory$1 */
    static /* synthetic */ class C34681 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$io$image$ImageType;

        static {
            int[] iArr = new int[ImageType.values().length];
            $SwitchMap$com$itextpdf$io$image$ImageType = iArr;
            try {
                iArr[ImageType.GIF.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.JPEG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.JPEG2000.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.PNG.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.BMP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.TIFF.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.JBIG2.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
        }
    }

    private static ImageData createImageInstance(URL url, boolean z) throws Throwable {
        switch (C34681.$SwitchMap$com$itextpdf$io$image$ImageType[ImageTypeDetector.detectImageType(url).ordinal()]) {
            case 1:
                GifImageData gifImageData = new GifImageData(url);
                GifImageHelper.processImage(gifImageData, 0);
                return gifImageData.getFrames().get(0);
            case 2:
                JpegImageData jpegImageData = new JpegImageData(url);
                JpegImageHelper.processImage(jpegImageData);
                return jpegImageData;
            case 3:
                Jpeg2000ImageData jpeg2000ImageData = new Jpeg2000ImageData(url);
                Jpeg2000ImageHelper.processImage(jpeg2000ImageData);
                return jpeg2000ImageData;
            case 4:
                PngImageData pngImageData = new PngImageData(url);
                PngImageHelper.processImage(pngImageData);
                return pngImageData;
            case 5:
                BmpImageData bmpImageData = new BmpImageData(url, false);
                BmpImageHelper.processImage(bmpImageData);
                return bmpImageData;
            case 6:
                TiffImageData tiffImageData = new TiffImageData(url, z, 1, false);
                TiffImageHelper.processImage(tiffImageData);
                return tiffImageData;
            case 7:
                Jbig2ImageData jbig2ImageData = new Jbig2ImageData(url, 1);
                Jbig2ImageHelper.processImage(jbig2ImageData);
                return jbig2ImageData;
            default:
                throw new IOException(IOException.ImageFormatCannotBeRecognized);
        }
    }

    private static ImageData createImageInstance(byte[] bArr, boolean z) throws Throwable {
        switch (C34681.$SwitchMap$com$itextpdf$io$image$ImageType[ImageTypeDetector.detectImageType(bArr).ordinal()]) {
            case 1:
                GifImageData gifImageData = new GifImageData(bArr);
                GifImageHelper.processImage(gifImageData, 0);
                return gifImageData.getFrames().get(0);
            case 2:
                JpegImageData jpegImageData = new JpegImageData(bArr);
                JpegImageHelper.processImage(jpegImageData);
                return jpegImageData;
            case 3:
                Jpeg2000ImageData jpeg2000ImageData = new Jpeg2000ImageData(bArr);
                Jpeg2000ImageHelper.processImage(jpeg2000ImageData);
                return jpeg2000ImageData;
            case 4:
                PngImageData pngImageData = new PngImageData(bArr);
                PngImageHelper.processImage(pngImageData);
                return pngImageData;
            case 5:
                BmpImageData bmpImageData = new BmpImageData(bArr, false);
                BmpImageHelper.processImage(bmpImageData);
                return bmpImageData;
            case 6:
                TiffImageData tiffImageData = new TiffImageData(bArr, z, 1, false);
                TiffImageHelper.processImage(tiffImageData);
                return tiffImageData;
            case 7:
                Jbig2ImageData jbig2ImageData = new Jbig2ImageData(bArr, 1);
                Jbig2ImageHelper.processImage(jbig2ImageData);
                return jbig2ImageData;
            default:
                throw new IOException(IOException.ImageFormatCannotBeRecognized);
        }
    }

    private static List<ImageData> processGifImageAndExtractFrames(int[] iArr, GifImageData gifImageData) {
        Arrays.sort(iArr);
        GifImageHelper.processImage(gifImageData, iArr[iArr.length - 1] - 1);
        ArrayList arrayList = new ArrayList();
        for (int i : iArr) {
            arrayList.add(gifImageData.getFrames().get(i - 1));
        }
        return arrayList;
    }

    private static void validateImageType(byte[] bArr, ImageType imageType) {
        ImageType imageTypeDetectImageType = ImageTypeDetector.detectImageType(bArr);
        if (imageTypeDetectImageType != imageType) {
            throw new IllegalArgumentException(imageType.name() + " image expected. Detected image type: " + imageTypeDetectImageType.name());
        }
    }

    private static void validateImageType(URL url, ImageType imageType) {
        ImageType imageTypeDetectImageType = ImageTypeDetector.detectImageType(url);
        if (imageTypeDetectImageType != imageType) {
            throw new IllegalArgumentException(imageType.name() + " image expected. Detected image type: " + imageTypeDetectImageType.name());
        }
    }
}
