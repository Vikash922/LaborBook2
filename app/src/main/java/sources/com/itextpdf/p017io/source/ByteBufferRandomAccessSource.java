package com.itextpdf.p017io.source;

import java.io.IOException;
import java.lang.reflect.Method;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
class ByteBufferRandomAccessSource implements IRandomAccessSource {
    private static final BufferCleaner CLEANER;
    public static final boolean UNMAP_SUPPORTED;
    private static boolean allowUnmapping = true;
    private final ByteBuffer byteBuffer;

    public ByteBufferRandomAccessSource(ByteBuffer byteBuffer) {
        this.byteBuffer = byteBuffer;
    }

    public static void enableByteBufferMemoryUnmapping() {
        allowUnmapping = false;
    }

    public static void disableByteBufferMemoryUnmapping() {
        allowUnmapping = false;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j) {
        if (j > 2147483647L) {
            throw new IllegalArgumentException("Position must be less than Integer.MAX_VALUE");
        }
        try {
            if (j >= this.byteBuffer.limit()) {
                return -1;
            }
            return this.byteBuffer.duplicate().get((int) j) & 255;
        } catch (BufferUnderflowException unused) {
            return -1;
        }
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public int get(long j, byte[] bArr, int i, int i2) {
        if (j > 2147483647L) {
            throw new IllegalArgumentException("Position must be less than Integer.MAX_VALUE");
        }
        if (j >= this.byteBuffer.limit()) {
            return -1;
        }
        ByteBuffer byteBufferDuplicate = this.byteBuffer.duplicate();
        byteBufferDuplicate.position((int) j);
        int iMin = Math.min(i2, byteBufferDuplicate.remaining());
        byteBufferDuplicate.get(bArr, i, iMin);
        return iMin;
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public long length() {
        return this.byteBuffer.limit();
    }

    @Override // com.itextpdf.p017io.source.IRandomAccessSource
    public void close() throws IOException {
        if (allowUnmapping) {
            clean(this.byteBuffer);
        }
    }

    static {
        Object objDoPrivileged = AccessController.doPrivileged((PrivilegedAction<Object>) new PrivilegedAction() { // from class: com.itextpdf.io.source.ByteBufferRandomAccessSource$$ExternalSyntheticLambda1
            @Override // java.security.PrivilegedAction
            public final Object run() {
                return BufferCleaner.unmapHackImpl();
            }
        });
        if (objDoPrivileged instanceof BufferCleaner) {
            CLEANER = (BufferCleaner) objDoPrivileged;
            UNMAP_SUPPORTED = true;
        } else {
            CLEANER = null;
            UNMAP_SUPPORTED = false;
        }
    }

    private static boolean clean(final ByteBuffer byteBuffer) {
        if (byteBuffer == null || !byteBuffer.isDirect()) {
            return false;
        }
        return ((Boolean) AccessController.doPrivileged(new PrivilegedAction() { // from class: com.itextpdf.io.source.ByteBufferRandomAccessSource$$ExternalSyntheticLambda0
            @Override // java.security.PrivilegedAction
            public final Object run() {
                return Boolean.valueOf(ByteBufferRandomAccessSource.cleanByUnmapping(byteBuffer));
            }
        })).booleanValue();
    }

    private static boolean cleanByUnmapping(ByteBuffer byteBuffer) {
        Boolean bool = Boolean.FALSE;
        try {
            if (UNMAP_SUPPORTED) {
                CLEANER.freeBuffer(byteBuffer.toString(), byteBuffer);
            } else {
                Method method = byteBuffer.getClass().getMethod("cleaner", null);
                method.setAccessible(true);
                Object objInvoke = method.invoke(byteBuffer, null);
                objInvoke.getClass().getMethod("clean", null).invoke(objInvoke, null);
            }
            bool = Boolean.TRUE;
        } catch (Exception e) {
            LoggerFactory.getLogger((Class<?>) ByteBufferRandomAccessSource.class).debug(e.getMessage());
        }
        return bool.booleanValue();
    }
}
