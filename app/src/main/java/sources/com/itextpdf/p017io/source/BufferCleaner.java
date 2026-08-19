package com.itextpdf.p017io.source;

import java.io.IOException;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.security.AccessController;
import java.security.PrivilegedAction;

/* JADX INFO: loaded from: classes6.dex */
class BufferCleaner {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    final Method method;
    final Object theUnsafe;
    Class<?> unmappableBufferClass;

    BufferCleaner(Class<?> cls, Method method, Object obj) {
        this.unmappableBufferClass = cls;
        this.method = method;
        this.theUnsafe = obj;
    }

    void freeBuffer(String str, final ByteBuffer byteBuffer) throws IOException {
        if (!byteBuffer.isDirect()) {
            throw new IllegalArgumentException("unmapping only works with direct buffers");
        }
        if (!this.unmappableBufferClass.isInstance(byteBuffer)) {
            throw new IllegalArgumentException("buffer is not an instance of " + this.unmappableBufferClass.getName());
        }
        Throwable th = (Throwable) AccessController.doPrivileged(new PrivilegedAction<Throwable>() { // from class: com.itextpdf.io.source.BufferCleaner.1
            @Override // java.security.PrivilegedAction
            public Throwable run() {
                try {
                    BufferCleaner.this.method.invoke(BufferCleaner.this.theUnsafe, byteBuffer);
                    return null;
                } catch (IllegalAccessException | InvocationTargetException e) {
                    return e;
                }
            }
        });
        if (th != null) {
            throw new IOException("Unable to unmap the mapped buffer: " + str, th);
        }
    }

    static Object unmapHackImpl() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Method declaredMethod = cls.getDeclaredMethod("invokeCleaner", ByteBuffer.class);
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new BufferCleaner(ByteBuffer.class, declaredMethod, declaredField.get(null));
        } catch (Exception e) {
            return e.getMessage();
        }
    }
}
