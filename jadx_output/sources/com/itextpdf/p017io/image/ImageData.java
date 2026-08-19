package com.itextpdf.p017io.image;

import com.itextpdf.p017io.colors.IccProfile;
import com.itextpdf.p017io.exceptions.IOException;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import com.itextpdf.p017io.source.ByteArrayOutputStream;
import com.itextpdf.p017io.source.RandomAccessFileOrArray;
import com.itextpdf.p017io.source.RandomAccessSourceFactory;
import com.itextpdf.p017io.util.StreamUtil;
import java.net.URL;
import java.util.Map;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ImageData {
    private static long serialId;
    private static final Object staticLock = new Object();
    protected byte[] data;
    protected float[] decode;
    protected Map<String, Object> decodeParms;
    protected boolean deflated;
    protected String filter;
    protected float height;
    protected Map<String, Object> imageAttributes;
    protected ImageData imageMask;
    protected int imageSize;
    protected boolean interpolation;
    protected ImageType originalType;
    protected IccProfile profile;
    protected float rotation;
    protected int[] transparency;
    protected URL url;
    protected float width;
    protected int bpc = 1;
    protected int colorEncodingComponentsNumber = -1;
    protected boolean inverted = false;
    protected int dpiX = 0;
    protected int dpiY = 0;
    protected int colorTransform = 1;
    protected boolean mask = false;
    protected float XYRatio = 0.0f;
    protected Long mySerialId = getSerialId();

    public boolean isRawImage() {
        return false;
    }

    protected ImageData(URL url, ImageType imageType) {
        this.url = url;
        this.originalType = imageType;
    }

    protected ImageData(byte[] bArr, ImageType imageType) {
        this.data = bArr;
        this.originalType = imageType;
    }

    public URL getUrl() {
        return this.url;
    }

    public void setUrl(URL url) {
        this.url = url;
    }

    public int[] getTransparency() {
        return this.transparency;
    }

    public void setTransparency(int[] iArr) {
        this.transparency = iArr;
    }

    public boolean isInverted() {
        return this.inverted;
    }

    public void setInverted(boolean z) {
        this.inverted = z;
    }

    public float getRotation() {
        return this.rotation;
    }

    public void setRotation(float f) {
        this.rotation = f;
    }

    public IccProfile getProfile() {
        return this.profile;
    }

    public void setProfile(IccProfile iccProfile) {
        this.profile = iccProfile;
    }

    public int getDpiX() {
        return this.dpiX;
    }

    public int getDpiY() {
        return this.dpiY;
    }

    public void setDpi(int i, int i2) {
        this.dpiX = i;
        this.dpiY = i2;
    }

    public int getColorTransform() {
        return this.colorTransform;
    }

    public void setColorTransform(int i) {
        this.colorTransform = i;
    }

    public boolean isDeflated() {
        return this.deflated;
    }

    public void setDeflated(boolean z) {
        this.deflated = z;
    }

    public ImageType getOriginalType() {
        return this.originalType;
    }

    public int getColorEncodingComponentsNumber() {
        return this.colorEncodingComponentsNumber;
    }

    public void setColorEncodingComponentsNumber(int i) {
        this.colorEncodingComponentsNumber = i;
    }

    public byte[] getData() {
        return this.data;
    }

    public boolean canBeMask() {
        return (isRawImage() && this.bpc > 255) || this.colorEncodingComponentsNumber == 1;
    }

    public boolean isMask() {
        return this.mask;
    }

    public ImageData getImageMask() {
        return this.imageMask;
    }

    public void setImageMask(ImageData imageData) {
        if (this.mask) {
            throw new IOException(IOException.ImageMaskCannotContainAnotherImageMask);
        }
        if (!imageData.mask) {
            throw new IOException(IOException.ImageIsNotMaskYouMustCallImageDataMakeMask);
        }
        this.imageMask = imageData;
    }

    public boolean isSoftMask() {
        int i;
        return this.mask && (i = this.bpc) > 1 && i <= 8;
    }

    public void makeMask() {
        if (!canBeMask()) {
            throw new IOException(IOException.ThisImageCanNotBeAnImageMask);
        }
        this.mask = true;
    }

    public float getWidth() {
        return this.width;
    }

    public void setWidth(float f) {
        this.width = f;
    }

    public float getHeight() {
        return this.height;
    }

    public void setHeight(float f) {
        this.height = f;
    }

    public int getBpc() {
        return this.bpc;
    }

    public void setBpc(int i) {
        this.bpc = i;
    }

    public boolean isInterpolation() {
        return this.interpolation;
    }

    public void setInterpolation(boolean z) {
        this.interpolation = z;
    }

    public float getXYRatio() {
        return this.XYRatio;
    }

    public void setXYRatio(float f) {
        this.XYRatio = f;
    }

    public Map<String, Object> getImageAttributes() {
        return this.imageAttributes;
    }

    public void setImageAttributes(Map<String, Object> map) {
        this.imageAttributes = map;
    }

    public String getFilter() {
        return this.filter;
    }

    public void setFilter(String str) {
        this.filter = str;
    }

    public Map<String, Object> getDecodeParms() {
        return this.decodeParms;
    }

    public float[] getDecode() {
        return this.decode;
    }

    public void setDecode(float[] fArr) {
        this.decode = fArr;
    }

    public boolean canImageBeInline() {
        Logger logger = LoggerFactory.getLogger((Class<?>) ImageData.class);
        if (this.imageSize > 4096) {
            logger.warn(IoLogMessageConstant.IMAGE_SIZE_CANNOT_BE_MORE_4KB);
            return false;
        }
        if (this.imageMask == null) {
            return true;
        }
        logger.warn(IoLogMessageConstant.IMAGE_HAS_MASK);
        return false;
    }

    void loadData() throws java.io.IOException {
        RandomAccessFileOrArray randomAccessFileOrArray = new RandomAccessFileOrArray(new RandomAccessSourceFactory().createSource(this.url));
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        StreamUtil.transferBytes(randomAccessFileOrArray, byteArrayOutputStream);
        randomAccessFileOrArray.close();
        this.data = byteArrayOutputStream.toByteArray();
    }

    private static Long getSerialId() {
        Long lValueOf;
        synchronized (staticLock) {
            long j = serialId + 1;
            serialId = j;
            lValueOf = Long.valueOf(j);
        }
        return lValueOf;
    }
}
