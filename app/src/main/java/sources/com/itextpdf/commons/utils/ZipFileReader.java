package com.itextpdf.commons.utils;

import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;
import com.itextpdf.commons.logs.CommonsLogMessageConstant;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Set;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;
import okhttp3.internal.http2.Http2Connection;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class ZipFileReader implements Closeable {
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) ZipFileReader.class);
    private final ZipFile zipFile;
    private int thresholdSize = Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
    private int thresholdEntries = 10000;
    private double thresholdRatio = 10.0d;

    public ZipFileReader(String str) throws IOException {
        if (str == null) {
            throw new IOException(CommonsExceptionMessageConstant.FILE_NAME_CAN_NOT_BE_NULL);
        }
        this.zipFile = new ZipFile(str, StandardCharsets.UTF_8);
    }

    public Set<String> getFileNames() throws IOException {
        HashSet hashSet = new HashSet();
        Enumeration<? extends ZipEntry> enumerationEntries = this.zipFile.entries();
        int i = 0;
        int i2 = 0;
        while (enumerationEntries.hasMoreElements()) {
            ZipEntry zipEntryNextElement = enumerationEntries.nextElement();
            BufferedInputStream bufferedInputStream = new BufferedInputStream(this.zipFile.getInputStream(zipEntryNextElement));
            boolean z = true;
            i++;
            try {
                byte[] bArr = new byte[2048];
                int i3 = 0;
                while (true) {
                    int i4 = bufferedInputStream.read(bArr);
                    if (i4 <= 0) {
                        z = false;
                        break;
                    }
                    i3 += i4;
                    i2 += i4;
                    if (((double) i3) / zipEntryNextElement.getCompressedSize() > this.thresholdRatio) {
                        break;
                    }
                }
                if (z) {
                    LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.RATIO_IS_HIGHLY_SUSPICIOUS, Double.valueOf(this.thresholdRatio)));
                } else {
                    int i5 = this.thresholdSize;
                    if (i2 > i5) {
                        LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.UNCOMPRESSED_DATA_SIZE_IS_TOO_MUCH, Integer.valueOf(i5)));
                    } else {
                        int i6 = this.thresholdEntries;
                        if (i > i6) {
                            LOGGER.warn(MessageFormatUtil.format(CommonsLogMessageConstant.TOO_MUCH_ENTRIES_IN_ARCHIVE, Integer.valueOf(i6)));
                        } else {
                            bufferedInputStream.close();
                            if (!zipEntryNextElement.isDirectory()) {
                                hashSet.add(zipEntryNextElement.getName());
                            }
                        }
                    }
                }
                bufferedInputStream.close();
                break;
            } finally {
            }
        }
        return hashSet;
    }

    public InputStream readFromZip(String str) throws IOException {
        if (str == null) {
            throw new IOException(CommonsExceptionMessageConstant.FILE_NAME_CAN_NOT_BE_NULL);
        }
        ZipEntry entry = this.zipFile.getEntry(str);
        if (entry == null || entry.isDirectory()) {
            throw new IOException(MessageFormatUtil.format(CommonsExceptionMessageConstant.ZIP_ENTRY_NOT_FOUND, str));
        }
        return this.zipFile.getInputStream(entry);
    }

    public void setThresholdSize(int i) {
        this.thresholdSize = i;
    }

    public void setThresholdEntries(int i) {
        this.thresholdEntries = i;
    }

    public void setThresholdRatio(double d) {
        this.thresholdRatio = d;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.zipFile.close();
    }
}
