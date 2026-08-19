package com.itextpdf.commons.utils;

import com.itextpdf.commons.exceptions.CommonsExceptionMessageConstant;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class ZipFileWriter implements Closeable {
    private final ZipOutputStream outputStream;

    /* JADX INFO: Access modifiers changed from: private */
    @FunctionalInterface
    interface ZipWriter {
        void write(ZipOutputStream zipOutputStream) throws IOException;
    }

    public ZipFileWriter(String str) throws IOException {
        if (str == null) {
            throw new IOException(CommonsExceptionMessageConstant.FILE_NAME_CAN_NOT_BE_NULL);
        }
        if (FileUtil.isFileNotEmpty(str) || FileUtil.directoryExists(str)) {
            throw new IOException(MessageFormatUtil.format(CommonsExceptionMessageConstant.FILE_NAME_ALREADY_EXIST, str));
        }
        ZipOutputStream zipOutputStream = new ZipOutputStream(FileUtil.getFileOutputStream(str), StandardCharsets.UTF_8);
        this.outputStream = zipOutputStream;
        zipOutputStream.setMethod(8);
        zipOutputStream.setLevel(9);
    }

    public void addEntry(String str, File file) throws IOException {
        if (file == null) {
            throw new IOException(CommonsExceptionMessageConstant.FILE_SHOULD_EXIST);
        }
        addEntry(str, Files.newInputStream(file.toPath(), new OpenOption[0]));
    }

    public void addEntry(String str, final InputStream inputStream) throws IOException {
        if (inputStream == null) {
            throw new IOException(CommonsExceptionMessageConstant.STREAM_CAN_NOT_BE_NULL);
        }
        addEntryToZip(str, new ZipWriter() { // from class: com.itextpdf.commons.utils.ZipFileWriter$$ExternalSyntheticLambda1
            @Override // com.itextpdf.commons.utils.ZipFileWriter.ZipWriter
            public final void write(ZipOutputStream zipOutputStream) throws IOException {
                ZipFileWriter.lambda$addEntry$0(inputStream, zipOutputStream);
            }
        });
    }

    static /* synthetic */ void lambda$addEntry$0(InputStream inputStream, ZipOutputStream zipOutputStream) throws IOException {
        byte[] bArr = new byte[1024];
        while (true) {
            int i = inputStream.read(bArr);
            if (i <= 0) {
                return;
            } else {
                zipOutputStream.write(bArr, 0, i);
            }
        }
    }

    public void addJsonEntry(String str, final Object obj) throws IOException {
        if (obj == null) {
            throw new IOException(CommonsExceptionMessageConstant.JSON_OBJECT_CAN_NOT_BE_NULL);
        }
        addEntryToZip(str, new ZipWriter() { // from class: com.itextpdf.commons.utils.ZipFileWriter$$ExternalSyntheticLambda0
            @Override // com.itextpdf.commons.utils.ZipFileWriter.ZipWriter
            public final void write(ZipOutputStream zipOutputStream) {
                JsonUtil.serializeToStream(zipOutputStream, obj);
            }
        });
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.outputStream.close();
    }

    private void addEntryToZip(String str, ZipWriter zipWriter) throws IOException {
        if (str == null) {
            throw new IOException(CommonsExceptionMessageConstant.FILE_NAME_SHOULD_BE_UNIQUE);
        }
        this.outputStream.putNextEntry(new ZipEntry(str));
        zipWriter.write(this.outputStream);
    }
}
