package com.itextpdf.kernel.pdf.canvas.wmf;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.image.ImageType;
import com.itextpdf.p017io.util.UrlUtil;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public class WmfImageData extends ImageData {
    private static final byte[] wmf = {-41, -51};

    public WmfImageData(String str) throws MalformedURLException {
        this(UrlUtil.toURL(str));
    }

    public WmfImageData(URL url) {
        super(url, ImageType.WMF);
        if (!imageTypeIs(readImageType(url), wmf)) {
            throw new PdfException(KernelExceptionMessageConstant.NOT_A_WMF_IMAGE);
        }
    }

    public WmfImageData(byte[] bArr) {
        super(bArr, ImageType.WMF);
        if (!imageTypeIs(readImageType(bArr), wmf)) {
            throw new PdfException(KernelExceptionMessageConstant.NOT_A_WMF_IMAGE);
        }
    }

    private static boolean imageTypeIs(byte[] bArr, byte[] bArr2) {
        for (int i = 0; i < bArr2.length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    private static byte[] readImageType(URL url) {
        InputStream inputStreamOpenStream = null;
        try {
            try {
                inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
                byte[] bArr = new byte[8];
                inputStreamOpenStream.read(bArr);
                if (inputStreamOpenStream != null) {
                    try {
                        inputStreamOpenStream.close();
                    } catch (IOException unused) {
                    }
                }
                return bArr;
            } catch (IOException e) {
                throw new PdfException("I/O exception.", (Throwable) e);
            }
        } catch (Throwable th) {
            if (inputStreamOpenStream != null) {
                try {
                    inputStreamOpenStream.close();
                } catch (IOException unused2) {
                }
            }
            throw th;
        }
    }

    private static byte[] readImageType(byte[] bArr) {
        return Arrays.copyOfRange(bArr, 0, 8);
    }
}
