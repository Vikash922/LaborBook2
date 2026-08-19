package com.inmobi.media;

import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.nio.charset.Charset;
import org.shadow.apache.commons.lang3.CharEncoding;

/* JADX INFO: renamed from: com.inmobi.media.Wc */
/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractC3023Wc {

    /* JADX INFO: renamed from: a */
    public static final Charset f1632a = Charset.forName(CharEncoding.US_ASCII);

    /* JADX INFO: renamed from: b */
    public static final Charset f1633b = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a */
    public static String m1894a(InputStreamReader inputStreamReader) throws IOException {
        try {
            StringWriter stringWriter = new StringWriter();
            char[] cArr = new char[1024];
            while (true) {
                int i = inputStreamReader.read(cArr);
                if (i == -1) {
                    return stringWriter.toString();
                }
                stringWriter.write(cArr, 0, i);
            }
        } finally {
            inputStreamReader.close();
        }
    }

    /* JADX INFO: renamed from: a */
    public static void m1896a(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                if (file2.isDirectory()) {
                    m1896a(file2);
                }
                if (!file2.delete()) {
                    throw new IOException("failed to delete file: " + file2);
                }
            }
            return;
        }
        throw new IOException("not a readable directory: " + file);
    }

    /* JADX INFO: renamed from: a */
    public static void m1895a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception unused) {
            }
        }
    }
}
