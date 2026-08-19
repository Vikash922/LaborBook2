package com.itextpdf.kernel.xmp;

import com.itextpdf.kernel.xmp.impl.XMPMetaImpl;
import com.itextpdf.kernel.xmp.impl.XMPMetaParser;
import com.itextpdf.kernel.xmp.impl.XMPSchemaRegistryImpl;
import com.itextpdf.kernel.xmp.impl.XMPSerializerHelper;
import com.itextpdf.kernel.xmp.options.ParseOptions;
import com.itextpdf.kernel.xmp.options.SerializeOptions;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes6.dex */
public final class XMPMetaFactory {
    private static final Object staticLock = new Object();
    private static XMPSchemaRegistry schema = new XMPSchemaRegistryImpl();
    private static XMPVersionInfo versionInfo = null;

    private XMPMetaFactory() {
    }

    public static XMPSchemaRegistry getSchemaRegistry() {
        return schema;
    }

    public static XMPMeta create() {
        return new XMPMetaImpl();
    }

    public static XMPMeta parse(InputStream inputStream) throws XMPException {
        return parse(inputStream, null);
    }

    public static XMPMeta parse(InputStream inputStream, ParseOptions parseOptions) throws XMPException {
        return XMPMetaParser.parse(inputStream, parseOptions);
    }

    public static XMPMeta parseFromString(String str) throws XMPException {
        return parseFromString(str, null);
    }

    public static XMPMeta parseFromString(String str, ParseOptions parseOptions) throws XMPException {
        return XMPMetaParser.parse(str, parseOptions);
    }

    public static XMPMeta parseFromBuffer(byte[] bArr) throws XMPException {
        return parseFromBuffer(bArr, null);
    }

    public static XMPMeta parseFromBuffer(byte[] bArr, ParseOptions parseOptions) throws XMPException {
        return XMPMetaParser.parse(bArr, parseOptions);
    }

    public static void serialize(XMPMeta xMPMeta, OutputStream outputStream) throws XMPException {
        serialize(xMPMeta, outputStream, null);
    }

    public static void serialize(XMPMeta xMPMeta, OutputStream outputStream, SerializeOptions serializeOptions) throws XMPException {
        assertImplementation(xMPMeta);
        XMPSerializerHelper.serialize((XMPMetaImpl) xMPMeta, outputStream, serializeOptions);
    }

    public static byte[] serializeToBuffer(XMPMeta xMPMeta, SerializeOptions serializeOptions) throws XMPException {
        assertImplementation(xMPMeta);
        return XMPSerializerHelper.serializeToBuffer((XMPMetaImpl) xMPMeta, serializeOptions);
    }

    public static String serializeToString(XMPMeta xMPMeta, SerializeOptions serializeOptions) throws XMPException {
        assertImplementation(xMPMeta);
        return XMPSerializerHelper.serializeToString((XMPMetaImpl) xMPMeta, serializeOptions);
    }

    private static void assertImplementation(XMPMeta xMPMeta) {
        if (!(xMPMeta instanceof XMPMetaImpl)) {
            throw new UnsupportedOperationException("The serializing service works onlywith the XMPMeta implementation of this library");
        }
    }

    public static void reset() {
        schema = new XMPSchemaRegistryImpl();
    }

    public static XMPVersionInfo getVersionInfo() {
        XMPVersionInfo xMPVersionInfo;
        synchronized (staticLock) {
            if (versionInfo == null) {
                try {
                    versionInfo = new XMPVersionInfoImpl(5, 1, 0, 3, false, "Adobe XMP Core 5.1.0-jc003");
                } catch (Throwable th) {
                    System.out.println(th);
                }
                xMPVersionInfo = versionInfo;
            } else {
                xMPVersionInfo = versionInfo;
            }
        }
        return xMPVersionInfo;
    }

    private static final class XMPVersionInfoImpl implements XMPVersionInfo {
        private final boolean debug;
        private final int engBuild;
        private final int major;
        private final String message;
        private final int micro;
        private final int minor;

        public XMPVersionInfoImpl(int i, int i2, int i3, int i4, boolean z, String str) {
            this.major = i;
            this.minor = i2;
            this.micro = i3;
            this.engBuild = i4;
            this.debug = z;
            this.message = str;
        }

        @Override // com.itextpdf.kernel.xmp.XMPVersionInfo
        public int getMajor() {
            return this.major;
        }

        @Override // com.itextpdf.kernel.xmp.XMPVersionInfo
        public int getMinor() {
            return this.minor;
        }

        @Override // com.itextpdf.kernel.xmp.XMPVersionInfo
        public int getMicro() {
            return this.micro;
        }

        @Override // com.itextpdf.kernel.xmp.XMPVersionInfo
        public boolean isDebug() {
            return this.debug;
        }

        @Override // com.itextpdf.kernel.xmp.XMPVersionInfo
        public int getBuild() {
            return this.engBuild;
        }

        @Override // com.itextpdf.kernel.xmp.XMPVersionInfo
        public String getMessage() {
            return this.message;
        }

        public String toString() {
            return this.message;
        }
    }
}
