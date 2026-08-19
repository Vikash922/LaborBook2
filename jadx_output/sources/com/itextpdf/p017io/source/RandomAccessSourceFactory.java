package com.itextpdf.p017io.source;

import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.util.ResourceUtil;
import com.itextpdf.p017io.util.StreamUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.net.URL;
import java.nio.channels.FileChannel;

/* JADX INFO: loaded from: classes6.dex */
public final class RandomAccessSourceFactory {
    private static boolean forceReadDefaultValue = false;
    private boolean forceRead = forceReadDefaultValue;
    private boolean usePlainRandomAccess = false;
    private boolean exclusivelyLockFile = false;

    public static void setForceReadDefaultValue(boolean z) {
        forceReadDefaultValue = z;
    }

    public RandomAccessSourceFactory setForceRead(boolean z) {
        this.forceRead = z;
        return this;
    }

    public RandomAccessSourceFactory setUsePlainRandomAccess(boolean z) {
        this.usePlainRandomAccess = z;
        return this;
    }

    public RandomAccessSourceFactory setExclusivelyLockFile(boolean z) {
        this.exclusivelyLockFile = z;
        return this;
    }

    public IRandomAccessSource createSource(byte[] bArr) {
        return new ArrayRandomAccessSource(bArr);
    }

    public IRandomAccessSource createSource(RandomAccessFile randomAccessFile) throws IOException {
        return new RAFRandomAccessSource(randomAccessFile);
    }

    public IRandomAccessSource createSource(URL url) throws IOException {
        InputStream inputStreamOpenStream = FirebasePerfUrlConnection.openStream(url);
        try {
            return createSource(inputStreamOpenStream);
        } finally {
            try {
                inputStreamOpenStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public IRandomAccessSource extractOrCreateSource(InputStream inputStream) throws IOException {
        if (inputStream instanceof RASInputStream) {
            return ((RASInputStream) inputStream).getSource();
        }
        return createSource(StreamUtil.inputStreamToArray(inputStream));
    }

    public IRandomAccessSource createSource(InputStream inputStream) throws IOException {
        return createSource(StreamUtil.inputStreamToArray(inputStream));
    }

    public IRandomAccessSource createBestSource(String str) throws Exception {
        File file = new File(str);
        if (!file.canRead()) {
            if (str.startsWith("file:/") || str.startsWith("http://") || str.startsWith("https://") || str.startsWith("jar:") || str.startsWith("wsjar:") || str.startsWith("vfszip:")) {
                return createSource(new URL(str));
            }
            return createByReadingToMemory(str);
        }
        if (this.forceRead) {
            return createByReadingToMemory(new FileInputStream(str));
        }
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, this.exclusivelyLockFile ? "rw" : "r");
        if (this.exclusivelyLockFile) {
            randomAccessFile.getChannel().lock();
        }
        if (this.usePlainRandomAccess) {
            return new RAFRandomAccessSource(randomAccessFile);
        }
        try {
            if (randomAccessFile.length() <= 0) {
                return new RAFRandomAccessSource(randomAccessFile);
            }
            try {
                return createBestSource(randomAccessFile.getChannel());
            } catch (IOException e) {
                if (exceptionIsMapFailureException(e)) {
                    return new RAFRandomAccessSource(randomAccessFile);
                }
                throw e;
            }
        } catch (Exception e2) {
            try {
                randomAccessFile.close();
            } catch (IOException unused) {
            }
            throw e2;
        }
    }

    public IRandomAccessSource createBestSource(FileChannel fileChannel) throws IOException {
        if (fileChannel.size() <= 67108864) {
            return new GetBufferedRandomAccessSource(new FileChannelRandomAccessSource(fileChannel));
        }
        return new GetBufferedRandomAccessSource(new PagedChannelRandomAccessSource(fileChannel));
    }

    public IRandomAccessSource createRanged(IRandomAccessSource iRandomAccessSource, long[] jArr) throws IOException {
        IRandomAccessSource[] iRandomAccessSourceArr = new IRandomAccessSource[jArr.length / 2];
        for (int i = 0; i < jArr.length; i += 2) {
            iRandomAccessSourceArr[i / 2] = new WindowRandomAccessSource(iRandomAccessSource, jArr[i], jArr[i + 1]);
        }
        return new GroupedRandomAccessSource(iRandomAccessSourceArr);
    }

    private IRandomAccessSource createByReadingToMemory(String str) throws IOException {
        InputStream resourceStream = ResourceUtil.getResourceStream(str);
        if (resourceStream == null) {
            throw new IOException(MessageFormatUtil.format(com.itextpdf.p017io.exceptions.IOException._1NotFoundAsFileOrResource, str));
        }
        return createByReadingToMemory(resourceStream);
    }

    private IRandomAccessSource createByReadingToMemory(InputStream inputStream) throws IOException {
        try {
            return new ArrayRandomAccessSource(StreamUtil.inputStreamToArray(inputStream));
        } finally {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    private static boolean exceptionIsMapFailureException(IOException iOException) {
        return iOException.getMessage() != null && iOException.getMessage().contains("Map failed");
    }
}
