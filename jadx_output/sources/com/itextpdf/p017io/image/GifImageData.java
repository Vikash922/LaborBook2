package com.itextpdf.p017io.image;

import com.itextpdf.p017io.source.ByteArrayOutputStream;
import com.itextpdf.p017io.util.StreamUtil;
import com.itextpdf.p017io.util.UrlUtil;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class GifImageData {
    private byte[] data;
    private List<ImageData> frames = new ArrayList();
    private float logicalHeight;
    private float logicalWidth;
    private URL url;

    protected GifImageData(URL url) {
        this.url = url;
    }

    protected GifImageData(byte[] bArr) {
        this.data = bArr;
    }

    public float getLogicalHeight() {
        return this.logicalHeight;
    }

    public void setLogicalHeight(float f) {
        this.logicalHeight = f;
    }

    public float getLogicalWidth() {
        return this.logicalWidth;
    }

    public void setLogicalWidth(float f) {
        this.logicalWidth = f;
    }

    public List<ImageData> getFrames() {
        return this.frames;
    }

    protected byte[] getData() {
        return this.data;
    }

    protected URL getUrl() {
        return this.url;
    }

    protected void addFrame(ImageData imageData) {
        this.frames.add(imageData);
    }

    void loadData() throws IOException {
        InputStream inputStreamOpenStream = null;
        try {
            inputStreamOpenStream = UrlUtil.openStream(this.url);
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            StreamUtil.transferBytes(UrlUtil.openStream(this.url), byteArrayOutputStream);
            this.data = byteArrayOutputStream.toByteArray();
        } finally {
            if (inputStreamOpenStream != null) {
                inputStreamOpenStream.close();
            }
        }
    }
}
