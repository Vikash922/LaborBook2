package com.itextpdf.p017io.image;

import java.net.URL;

/* JADX INFO: loaded from: classes6.dex */
public class PngImageData extends RawImageData {
    private byte[] colorPalette;
    private int colorType;
    private float gamma;
    private PngChromaticities pngChromaticities;

    protected PngImageData(byte[] bArr) {
        super(bArr, ImageType.PNG);
        this.gamma = 1.0f;
    }

    protected PngImageData(URL url) {
        super(url, ImageType.PNG);
        this.gamma = 1.0f;
    }

    public byte[] getColorPalette() {
        return this.colorPalette;
    }

    public void setColorPalette(byte[] bArr) {
        this.colorPalette = bArr;
    }

    public float getGamma() {
        return this.gamma;
    }

    public void setGamma(float f) {
        this.gamma = f;
    }

    public boolean isHasCHRM() {
        return this.pngChromaticities != null;
    }

    public PngChromaticities getPngChromaticities() {
        return this.pngChromaticities;
    }

    public void setPngChromaticities(PngChromaticities pngChromaticities) {
        this.pngChromaticities = pngChromaticities;
    }

    public int getColorType() {
        return this.colorType;
    }

    public void setColorType(int i) {
        this.colorType = i;
    }

    public boolean isIndexed() {
        return this.colorType == 3;
    }

    public boolean isGrayscaleImage() {
        return (this.colorType & 2) == 0;
    }
}
