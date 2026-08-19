package com.itextpdf.kernel.pdf.xobject;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfLiteral;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfReader;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.canvas.wmf.WmfImageData;
import com.itextpdf.kernel.pdf.filters.DoNothingFilter;
import com.itextpdf.kernel.pdf.filters.FilterHandlers;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.image.ImageType;
import com.itextpdf.p017io.image.PngChromaticities;
import com.itextpdf.p017io.image.PngImageData;
import com.itextpdf.p017io.image.PngImageHelperConstants;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import javax.imageio.ImageIO;

/* JADX INFO: loaded from: classes6.dex */
public class PdfImageXObject extends PdfXObject {
    private float height;
    private boolean mask;
    private boolean softMask;
    private float width;

    public PdfImageXObject(ImageData imageData) {
        this(imageData, null);
    }

    public PdfImageXObject(ImageData imageData, PdfImageXObject pdfImageXObject) {
        this(createPdfStream(checkImageType(imageData), pdfImageXObject));
        this.mask = imageData.isMask();
        this.softMask = imageData.isSoftMask();
    }

    public PdfImageXObject(PdfStream pdfStream) {
        super(pdfStream);
        if (pdfStream.isFlushed()) {
            return;
        }
        initWidthField();
        initHeightField();
    }

    @Override // com.itextpdf.kernel.pdf.xobject.PdfXObject
    public float getWidth() {
        return this.width;
    }

    @Override // com.itextpdf.kernel.pdf.xobject.PdfXObject
    public float getHeight() {
        return this.height;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    public PdfImageXObject copyTo(PdfDocument pdfDocument) {
        PdfImageXObject pdfImageXObject = new PdfImageXObject((PdfStream) getPdfObject().copyTo(pdfDocument));
        pdfImageXObject.mask = this.mask;
        pdfImageXObject.softMask = this.softMask;
        return pdfImageXObject;
    }

    public BufferedImage getBufferedImage() throws IOException {
        return ImageIO.read(new ByteArrayInputStream(getImageBytes()));
    }

    public byte[] getImageBytes() {
        return getImageBytes(true);
    }

    public byte[] getImageBytes(boolean z) {
        byte[] bytes = getPdfObject().getBytes(false);
        if (!z) {
            return bytes;
        }
        HashMap map = new HashMap(FilterHandlers.getDefaultFilterHandlers());
        map.put(PdfName.JBIG2Decode, new DoNothingFilter());
        byte[] bArrDecodeBytes = PdfReader.decodeBytes(bytes, getPdfObject(), map);
        ImageType imageTypeIdentifyImageType = identifyImageType();
        if (imageTypeIdentifyImageType != ImageType.TIFF && imageTypeIdentifyImageType != ImageType.PNG) {
            return bArrDecodeBytes;
        }
        try {
            return new ImagePdfBytesInfo(this).decodeTiffAndPngBytes(bArrDecodeBytes);
        } catch (IOException e) {
            throw new RuntimeException("IO exception in PdfImageXObject", e);
        }
    }

    public ImageType identifyImageType() {
        PdfObject pdfObject = getPdfObject().get(PdfName.Filter);
        PdfArray pdfArray = new PdfArray();
        if (pdfObject != null) {
            if (pdfObject.getType() == 6) {
                pdfArray.add(pdfObject);
            } else if (pdfObject.getType() == 1) {
                pdfArray = (PdfArray) pdfObject;
            }
        }
        for (int size = pdfArray.size() - 1; size >= 0; size--) {
            PdfName pdfName = (PdfName) pdfArray.get(size);
            if (PdfName.DCTDecode.equals(pdfName)) {
                return ImageType.JPEG;
            }
            if (PdfName.JBIG2Decode.equals(pdfName)) {
                return ImageType.JBIG2;
            }
            if (PdfName.JPXDecode.equals(pdfName)) {
                return ImageType.JPEG2000;
            }
        }
        if (new ImagePdfBytesInfo(this).getPngColorType() < 0) {
            return ImageType.TIFF;
        }
        return ImageType.PNG;
    }

    /* JADX INFO: renamed from: com.itextpdf.kernel.pdf.xobject.PdfImageXObject$1 */
    static /* synthetic */ class C34891 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$io$image$ImageType;

        static {
            int[] iArr = new int[ImageType.values().length];
            $SwitchMap$com$itextpdf$io$image$ImageType = iArr;
            try {
                iArr[ImageType.PNG.ordinal()] = 1;
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
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.TIFF.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$io$image$ImageType[ImageType.JBIG2.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public String identifyImageFileExtension() {
        int i = C34891.$SwitchMap$com$itextpdf$io$image$ImageType[identifyImageType().ordinal()];
        if (i == 1) {
            return "png";
        }
        if (i == 2) {
            return "jpg";
        }
        if (i == 3) {
            return "jp2";
        }
        if (i == 4) {
            return "tif";
        }
        if (i == 5) {
            return "jbig2";
        }
        throw new IllegalStateException("Should have never happened. This type of image is not allowed for ImageXObject");
    }

    public PdfImageXObject put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        return this;
    }

    private float initWidthField() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.Width);
        if (asNumber != null) {
            this.width = asNumber.floatValue();
        }
        return this.width;
    }

    private float initHeightField() {
        PdfNumber asNumber = getPdfObject().getAsNumber(PdfName.Height);
        if (asNumber != null) {
            this.height = asNumber.floatValue();
        }
        return this.height;
    }

    /* JADX WARN: Removed duplicated region for block: B:67:0x0171  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.itextpdf.kernel.pdf.PdfStream createPdfStream(com.itextpdf.p017io.image.ImageData r10, com.itextpdf.kernel.pdf.xobject.PdfImageXObject r11) {
        /*
            Method dump skipped, instruction units count: 660
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.kernel.pdf.xobject.PdfImageXObject.createPdfStream(com.itextpdf.io.image.ImageData, com.itextpdf.kernel.pdf.xobject.PdfImageXObject):com.itextpdf.kernel.pdf.PdfStream");
    }

    private static PdfDictionary createDictionaryFromMap(PdfStream pdfStream, Map<String, Object> map) {
        if (map == null) {
            return null;
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            Object value = entry.getValue();
            String key = entry.getKey();
            if (value instanceof Integer) {
                pdfDictionary.put(new PdfName(key), new PdfNumber(((Integer) value).intValue()));
            } else if (value instanceof Float) {
                pdfDictionary.put(new PdfName(key), new PdfNumber(((Float) value).floatValue()));
            } else if (value instanceof String) {
                if (value.equals(PngImageHelperConstants.MASK)) {
                    pdfDictionary.put(PdfName.Mask, new PdfLiteral((String) value));
                } else {
                    String str = (String) value;
                    if (str.indexOf(47) == 0) {
                        pdfDictionary.put(new PdfName(key), new PdfName(str.substring(1)));
                    } else {
                        pdfDictionary.put(new PdfName(key), new PdfString(str));
                    }
                }
            } else if (value instanceof byte[]) {
                PdfStream pdfStream2 = new PdfStream();
                pdfStream2.getOutputStream().writeBytes((byte[]) value);
                pdfDictionary.put(PdfName.JBIG2Globals, pdfStream2);
            } else if (value instanceof Boolean) {
                pdfDictionary.put(new PdfName(key), PdfBoolean.valueOf(((Boolean) value).booleanValue()));
            } else if (value instanceof Object[]) {
                pdfDictionary.put(new PdfName(key), createArray(pdfStream, (Object[]) value));
            } else if (value instanceof float[]) {
                pdfDictionary.put(new PdfName(key), new PdfArray((float[]) value));
            } else if (value instanceof int[]) {
                pdfDictionary.put(new PdfName(key), new PdfArray((int[]) value));
            }
        }
        return pdfDictionary;
    }

    private static PdfArray createArray(PdfStream pdfStream, Object[] objArr) {
        PdfArray pdfArray = new PdfArray();
        for (Object obj : objArr) {
            if (obj instanceof String) {
                String str = (String) obj;
                if (str.indexOf(47) == 0) {
                    pdfArray.add(new PdfName(str.substring(1)));
                } else {
                    pdfArray.add(new PdfString(str));
                }
            } else if (obj instanceof Integer) {
                pdfArray.add(new PdfNumber(((Integer) obj).intValue()));
            } else if (obj instanceof Float) {
                pdfArray.add(new PdfNumber(((Float) obj).floatValue()));
            } else if (obj instanceof Object[]) {
                pdfArray.add(createArray(pdfStream, (Object[]) obj));
            } else {
                pdfArray.add(createDictionaryFromMap(pdfStream, (Map) obj));
            }
        }
        return pdfArray;
    }

    private static ImageData checkImageType(ImageData imageData) {
        if (imageData instanceof WmfImageData) {
            throw new PdfException(KernelExceptionMessageConstant.CANNOT_CREATE_PDF_IMAGE_XOBJECT_BY_WMF_IMAGE);
        }
        return imageData;
    }

    private static PdfObject getColorSpaceInfo(PngImageData pngImageData) {
        if (pngImageData.getProfile() != null) {
            if (pngImageData.isGrayscaleImage()) {
                return PdfName.DeviceGray;
            }
            return PdfName.DeviceRGB;
        }
        if (pngImageData.getGamma() == 1.0f && !pngImageData.isHasCHRM()) {
            if (pngImageData.isGrayscaleImage()) {
                return PdfName.DeviceGray;
            }
            return PdfName.DeviceRGB;
        }
        PdfArray pdfArray = new PdfArray();
        PdfDictionary pdfDictionary = new PdfDictionary();
        if (!pngImageData.isGrayscaleImage()) {
            float[] fArr = {1.0f, 1.0f, 1.0f};
            pdfArray.add(PdfName.CalRGB);
            float gamma = pngImageData.getGamma();
            if (gamma != 1.0f) {
                pdfDictionary.put(PdfName.Gamma, new PdfArray(new float[]{gamma, gamma, gamma}));
            }
            if (pngImageData.isHasCHRM()) {
                PngChromaticitiesHelper pngChromaticitiesHelper = new PngChromaticitiesHelper(null);
                pngChromaticitiesHelper.constructMatrix(pngImageData);
                fArr = pngChromaticitiesHelper.f3203wp;
                pdfDictionary.put(PdfName.Matrix, new PdfArray(pngChromaticitiesHelper.matrix));
            }
            pdfDictionary.put(PdfName.WhitePoint, new PdfArray(fArr));
        } else {
            if (pngImageData.getGamma() == 1.0f) {
                return PdfName.DeviceGray;
            }
            pdfArray.add(PdfName.CalGray);
            pdfDictionary.put(PdfName.Gamma, new PdfNumber(pngImageData.getGamma()));
            pdfDictionary.put(PdfName.WhitePoint, new PdfArray(new int[]{1, 1, 1}));
        }
        pdfArray.add(pdfDictionary);
        return pdfArray;
    }

    private static class PngChromaticitiesHelper {
        float[] matrix;

        /* JADX INFO: renamed from: wp */
        float[] f3203wp;

        private PngChromaticitiesHelper() {
            this.matrix = new float[9];
            this.f3203wp = new float[3];
        }

        /* synthetic */ PngChromaticitiesHelper(C34891 c34891) {
            this();
        }

        public void constructMatrix(PngImageData pngImageData) {
            PngChromaticities pngChromaticities = pngImageData.getPngChromaticities();
            float yw = pngChromaticities.getYW() * ((((pngChromaticities.getXG() - pngChromaticities.getXB()) * pngChromaticities.getYR()) - ((pngChromaticities.getXR() - pngChromaticities.getXB()) * pngChromaticities.getYG())) + ((pngChromaticities.getXR() - pngChromaticities.getXG()) * pngChromaticities.getYB()));
            float yr = (pngChromaticities.getYR() * ((((pngChromaticities.getXG() - pngChromaticities.getXB()) * pngChromaticities.getYW()) - ((pngChromaticities.getXW() - pngChromaticities.getXB()) * pngChromaticities.getYG())) + ((pngChromaticities.getXW() - pngChromaticities.getXG()) * pngChromaticities.getYB()))) / yw;
            float xr = (pngChromaticities.getXR() * yr) / pngChromaticities.getYR();
            float xr2 = (((1.0f - pngChromaticities.getXR()) / pngChromaticities.getYR()) - 1.0f) * yr;
            float xr3 = ((-pngChromaticities.getYG()) * ((((pngChromaticities.getXR() - pngChromaticities.getXB()) * pngChromaticities.getYW()) - ((pngChromaticities.getXW() - pngChromaticities.getXB()) * pngChromaticities.getYR())) + ((pngChromaticities.getXW() - pngChromaticities.getXR()) * pngChromaticities.getYB()))) / yw;
            float xg = (pngChromaticities.getXG() * xr3) / pngChromaticities.getYG();
            float xg2 = (((1.0f - pngChromaticities.getXG()) / pngChromaticities.getYG()) - 1.0f) * xr3;
            float yb = (pngChromaticities.getYB() * ((((pngChromaticities.getXR() - pngChromaticities.getXG()) * pngChromaticities.getYW()) - ((pngChromaticities.getXW() - pngChromaticities.getXG()) * pngChromaticities.getYW())) + ((pngChromaticities.getXW() - pngChromaticities.getXR()) * pngChromaticities.getYG()))) / yw;
            float xb = (pngChromaticities.getXB() * yb) / pngChromaticities.getYB();
            float xb2 = (((1.0f - pngChromaticities.getXB()) / pngChromaticities.getYB()) - 1.0f) * yb;
            this.f3203wp = Arrays.copyOf(new float[]{xr + xg + xb, 1.0f, xr2 + xg2 + xb2}, 3);
            this.matrix = Arrays.copyOf(new float[]{xr, yr, xr2, xg, xr3, xg2, xb, yb, xb2}, 9);
        }
    }
}
