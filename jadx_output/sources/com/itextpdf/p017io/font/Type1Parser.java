package com.itextpdf.p017io.font;

import com.itextpdf.p017io.font.constants.FontResources;
import com.itextpdf.p017io.font.constants.StandardFonts;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.p017io.util.ResourceUtil;
import java.io.ByteArrayOutputStream;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: loaded from: classes6.dex */
class Type1Parser {
    private static final String AFM_HEADER = "StartFontMetrics";
    private byte[] afmData;
    private String afmPath;
    private boolean isBuiltInFont;
    private byte[] pfbData;
    private String pfbPath;
    private RandomAccessSourceFactory sourceFactory = new RandomAccessSourceFactory();

    public Type1Parser(String str, String str2, byte[] bArr, byte[] bArr2) {
        this.afmData = bArr;
        this.pfbData = bArr2;
        this.afmPath = str;
        this.pfbPath = str2;
    }

    /* JADX WARN: Finally extract failed */
    public RandomAccessFileOrArray getMetricsFile() throws IOException {
        this.isBuiltInFont = false;
        if (StandardFonts.isStandardFont(this.afmPath)) {
            this.isBuiltInFont = true;
            byte[] bArr = new byte[1024];
            InputStream inputStream = null;
            try {
                String str = FontResources.AFMS + this.afmPath + ".afm";
                InputStream resourceStream = ResourceUtil.getResourceStream(str);
                if (resourceStream == null) {
                    throw new com.itextpdf.p017io.exceptions.IOException("{0} was not found as resource.").setMessageParams(str);
                }
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                while (true) {
                    int i = resourceStream.read(bArr);
                    if (i < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, i);
                }
                byte[] byteArray = byteArrayOutputStream.toByteArray();
                if (resourceStream != null) {
                    try {
                        resourceStream.close();
                    } catch (Exception unused) {
                    }
                }
                return new RandomAccessFileOrArray(this.sourceFactory.createSource(byteArray));
            } catch (Throwable th) {
                if (0 != 0) {
                    try {
                        inputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        }
        String str2 = this.afmPath;
        if (str2 != null) {
            if (str2.toLowerCase().endsWith(".afm")) {
                return new RandomAccessFileOrArray(this.sourceFactory.createBestSource(this.afmPath));
            }
            if (this.afmPath.toLowerCase().endsWith(".pfm")) {
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                RandomAccessFileOrArray randomAccessFileOrArray = new RandomAccessFileOrArray(this.sourceFactory.createBestSource(this.afmPath));
                Pfm2afm.convert(randomAccessFileOrArray, byteArrayOutputStream2);
                randomAccessFileOrArray.close();
                return new RandomAccessFileOrArray(this.sourceFactory.createSource(byteArrayOutputStream2.toByteArray()));
            }
            throw new com.itextpdf.p017io.exceptions.IOException(com.itextpdf.p017io.exceptions.IOException._1IsNotAnAfmOrPfmFontFile).setMessageParams(this.afmPath);
        }
        if (this.afmData != null) {
            RandomAccessFileOrArray randomAccessFileOrArray2 = new RandomAccessFileOrArray(this.sourceFactory.createSource(this.afmData));
            if (isAfmFile(randomAccessFileOrArray2)) {
                return randomAccessFileOrArray2;
            }
            ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
            try {
                try {
                    Pfm2afm.convert(randomAccessFileOrArray2, byteArrayOutputStream3);
                    randomAccessFileOrArray2.close();
                    return new RandomAccessFileOrArray(this.sourceFactory.createSource(byteArrayOutputStream3.toByteArray()));
                } catch (Throwable th2) {
                    randomAccessFileOrArray2.close();
                    throw th2;
                }
            } catch (Exception unused3) {
                throw new com.itextpdf.p017io.exceptions.IOException("Invalid afm or pfm font file.");
            }
        }
        throw new com.itextpdf.p017io.exceptions.IOException("Invalid afm or pfm font file.");
    }

    public RandomAccessFileOrArray getPostscriptBinary() throws IOException {
        if (this.pfbData != null) {
            return new RandomAccessFileOrArray(this.sourceFactory.createSource(this.pfbData));
        }
        String str = this.pfbPath;
        if (str != null && str.toLowerCase().endsWith(".pfb")) {
            return new RandomAccessFileOrArray(this.sourceFactory.createBestSource(this.pfbPath));
        }
        this.pfbPath = new StringBuilder().append(this.afmPath.substring(0, r1.length() - 3)).append("pfb").toString();
        return new RandomAccessFileOrArray(this.sourceFactory.createBestSource(this.pfbPath));
    }

    public boolean isBuiltInFont() {
        return this.isBuiltInFont;
    }

    public String getAfmPath() {
        return this.afmPath;
    }

    private boolean isAfmFile(RandomAccessFileOrArray randomAccessFileOrArray) throws IOException {
        StringBuilder sb = new StringBuilder(AFM_HEADER.length());
        for (int i = 0; i < AFM_HEADER.length(); i++) {
            try {
                sb.append((char) randomAccessFileOrArray.readByte());
            } catch (EOFException unused) {
                randomAccessFileOrArray.seek(0L);
                return false;
            }
        }
        randomAccessFileOrArray.seek(0L);
        return AFM_HEADER.equals(sb.toString());
    }
}
