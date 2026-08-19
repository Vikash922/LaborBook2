package com.itextpdf.io.image;

import com.itextpdf.io.image.Jpeg2000ImageData;
import com.itextpdf.io.util.StreamUtil;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
final class Jpeg2000ImageHelper {
    private static final int JP2_BPCC = 1651532643;
    private static final int JP2_COLR = 1668246642;
    private static final int JP2_DBTL = 1685348972;
    private static final int JP2_FTYP = 1718909296;
    private static final int JP2_IHDR = 1768449138;
    private static final int JP2_JP = 1783636000;
    private static final int JP2_JP2 = 1785737760;
    private static final int JP2_JP2C = 1785737827;
    private static final int JP2_JP2H = 1785737832;
    private static final int JP2_URL = 1970433056;
    private static final int JPIP_JPIP = 1785751920;
    private static final int JPX_JPXB = 1785755746;

    Jpeg2000ImageHelper() {
    }

    private static class Jpeg2000Box {
        int length;
        int type;

        private Jpeg2000Box() {
        }
    }

    private static class ZeroBoxSizeException extends IOException {
        ZeroBoxSizeException(String str) {
            super(str);
        }
    }

    public static void processImage(ImageData imageData) {
        if (imageData.getOriginalType() != ImageType.JPEG2000) {
            throw new IllegalArgumentException("JPEG2000 image expected");
        }
        processParameters((Jpeg2000ImageData) imageData);
        imageData.setFilter("JPXDecode");
    }

    private static void processParameters(Jpeg2000ImageData jpeg2000ImageData) {
        jpeg2000ImageData.parameters = new Jpeg2000ImageData.Parameters();
        try {
            if (jpeg2000ImageData.getData() == null) {
                jpeg2000ImageData.loadData();
            }
            ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(jpeg2000ImageData.getData());
            Jpeg2000Box jpeg2000Box = new Jpeg2000Box();
            jpeg2000Box.length = cio_read(4, byteArrayInputStream);
            if (jpeg2000Box.length == 12) {
                jpeg2000ImageData.parameters.isJp2 = true;
                jpeg2000Box.type = cio_read(4, byteArrayInputStream);
                if (JP2_JP != jpeg2000Box.type) {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.ExpectedJpMarker);
                }
                if (218793738 != cio_read(4, byteArrayInputStream)) {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.ErrorWithJpMarker);
                }
                jp2_read_boxhdr(jpeg2000Box, byteArrayInputStream);
                if (JP2_FTYP != jpeg2000Box.type) {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.ExpectedFtypMarker);
                }
                StreamUtil.skip(byteArrayInputStream, 8L);
                for (int i = 4; i < jpeg2000Box.length / 4; i++) {
                    if (cio_read(4, byteArrayInputStream) == JPX_JPXB) {
                        jpeg2000ImageData.parameters.isJpxBaseline = true;
                    }
                }
                jp2_read_boxhdr(jpeg2000Box, byteArrayInputStream);
                do {
                    if (JP2_JP2H != jpeg2000Box.type) {
                        if (jpeg2000Box.type == JP2_JP2C) {
                            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.ExpectedJp2hMarker);
                        }
                        StreamUtil.skip(byteArrayInputStream, jpeg2000Box.length - 8);
                        jp2_read_boxhdr(jpeg2000Box, byteArrayInputStream);
                    }
                } while (JP2_JP2H != jpeg2000Box.type);
                jp2_read_boxhdr(jpeg2000Box, byteArrayInputStream);
                if (JP2_IHDR != jpeg2000Box.type) {
                    throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.ExpectedIhdrMarker);
                }
                jpeg2000ImageData.setHeight(cio_read(4, byteArrayInputStream));
                jpeg2000ImageData.setWidth(cio_read(4, byteArrayInputStream));
                jpeg2000ImageData.parameters.numOfComps = cio_read(2, byteArrayInputStream);
                jpeg2000ImageData.setBpc(cio_read(1, byteArrayInputStream));
                StreamUtil.skip(byteArrayInputStream, 3L);
                jp2_read_boxhdr(jpeg2000Box, byteArrayInputStream);
                if (jpeg2000Box.type == JP2_BPCC) {
                    jpeg2000ImageData.parameters.bpcBoxData = new byte[jpeg2000Box.length - 8];
                    byteArrayInputStream.read(jpeg2000ImageData.parameters.bpcBoxData, 0, jpeg2000Box.length - 8);
                    return;
                } else {
                    if (jpeg2000Box.type == JP2_COLR) {
                        do {
                            if (jpeg2000ImageData.parameters.colorSpecBoxes == null) {
                                jpeg2000ImageData.parameters.colorSpecBoxes = new ArrayList();
                            }
                            jpeg2000ImageData.parameters.colorSpecBoxes.add(jp2_read_colr(jpeg2000Box, byteArrayInputStream));
                            try {
                                jp2_read_boxhdr(jpeg2000Box, byteArrayInputStream);
                            } catch (ZeroBoxSizeException unused) {
                            }
                        } while (JP2_COLR == jpeg2000Box.type);
                        return;
                    }
                    return;
                }
            }
            if (jpeg2000Box.length == -11534511) {
                StreamUtil.skip(byteArrayInputStream, 4L);
                int iCio_read = cio_read(4, byteArrayInputStream);
                int iCio_read2 = cio_read(4, byteArrayInputStream);
                int iCio_read3 = cio_read(4, byteArrayInputStream);
                int iCio_read4 = cio_read(4, byteArrayInputStream);
                StreamUtil.skip(byteArrayInputStream, 16L);
                jpeg2000ImageData.setColorEncodingComponentsNumber(cio_read(2, byteArrayInputStream));
                jpeg2000ImageData.setBpc(8);
                jpeg2000ImageData.setHeight(iCio_read2 - iCio_read4);
                jpeg2000ImageData.setWidth(iCio_read - iCio_read3);
                return;
            }
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.InvalidJpeg2000File);
        } catch (IOException e) {
            throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.Jpeg2000ImageException, (Throwable) e);
        }
    }

    private static Jpeg2000ImageData.ColorSpecBox jp2_read_colr(Jpeg2000Box jpeg2000Box, InputStream inputStream) throws IOException {
        Jpeg2000ImageData.ColorSpecBox colorSpecBox = new Jpeg2000ImageData.ColorSpecBox();
        int i = 8;
        for (int i2 = 0; i2 < 3; i2++) {
            colorSpecBox.add(Integer.valueOf(cio_read(1, inputStream)));
            i++;
        }
        if (colorSpecBox.getMeth() == 1) {
            colorSpecBox.add(Integer.valueOf(cio_read(4, inputStream)));
            i += 4;
        } else {
            colorSpecBox.add(0);
        }
        if (jpeg2000Box.length - i > 0) {
            byte[] bArr = new byte[jpeg2000Box.length - i];
            inputStream.read(bArr, 0, jpeg2000Box.length - i);
            colorSpecBox.setColorProfile(bArr);
        }
        return colorSpecBox;
    }

    private static void jp2_read_boxhdr(Jpeg2000Box jpeg2000Box, InputStream inputStream) throws IOException {
        jpeg2000Box.length = cio_read(4, inputStream);
        jpeg2000Box.type = cio_read(4, inputStream);
        if (jpeg2000Box.length == 1) {
            if (cio_read(4, inputStream) != 0) {
                throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.CannotHandleBoxSizesHigherThan2_32);
            }
            jpeg2000Box.length = cio_read(4, inputStream);
            if (jpeg2000Box.length == 0) {
                throw new com.itextpdf.io.exceptions.IOException(com.itextpdf.io.exceptions.IOException.UnsupportedBoxSizeEqEq0);
            }
            return;
        }
        if (jpeg2000Box.length == 0) {
            throw new ZeroBoxSizeException("Unsupported box size == 0");
        }
    }

    private static int cio_read(int i, InputStream inputStream) throws IOException {
        int i2 = 0;
        for (int i3 = i - 1; i3 >= 0; i3--) {
            i2 += inputStream.read() << (i3 << 3);
        }
        return i2;
    }
}
