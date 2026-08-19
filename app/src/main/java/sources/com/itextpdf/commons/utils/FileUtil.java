package com.itextpdf.commons.utils;

import java.io.BufferedOutputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.net.MalformedURLException;
import java.net.URISyntaxException;
import java.net.URL;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.nio.file.attribute.FileAttribute;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public final class FileUtil {
    private FileUtil() {
    }

    public static String getFontsDir() {
        try {
            return System.getenv("windir") + System.getProperty("file.separator") + "fonts";
        } catch (SecurityException unused) {
            LoggerFactory.getLogger((Class<?>) FileUtil.class).warn("Can't access System.getenv(\"windir\") to load fonts. Please, add RuntimePermission for getenv.windir.");
            return null;
        }
    }

    public static boolean fileExists(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile();
    }

    public static boolean isFileNotEmpty(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isFile() && file.length() > 0;
    }

    public static boolean directoryExists(String str) {
        if (str == null) {
            return false;
        }
        File file = new File(str);
        return file.exists() && file.isDirectory();
    }

    public static String[] listFilesInDirectory(String str, boolean z) {
        File[] fileArrListFiles;
        if (str != null) {
            File file = new File(str);
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null) {
                Arrays.sort(fileArrListFiles, new CaseSensitiveFileComparator());
                ArrayList arrayList = new ArrayList();
                for (File file2 : fileArrListFiles) {
                    if (file2.isDirectory() && z) {
                        listAllFiles(file2.getAbsolutePath(), arrayList);
                    } else {
                        arrayList.add(file2.getAbsolutePath());
                    }
                }
                return (String[]) arrayList.toArray(new String[0]);
            }
        }
        return null;
    }

    public static File[] listFilesInDirectoryByFilter(String str, FileFilter fileFilter) {
        File[] fileArrListFiles = (str == null || str.isEmpty()) ? null : new File(str).listFiles(fileFilter);
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, new CaseSensitiveFileComparator());
        }
        return fileArrListFiles;
    }

    private static void listAllFiles(String str, List<String> list) {
        File[] fileArrListFiles = new File(str).listFiles();
        if (fileArrListFiles != null) {
            Arrays.sort(fileArrListFiles, new CaseSensitiveFileComparator());
            for (File file : fileArrListFiles) {
                if (file.isDirectory()) {
                    listAllFiles(file.getAbsolutePath(), list);
                } else {
                    list.add(file.getAbsolutePath());
                }
            }
        }
    }

    public static PrintWriter createPrintWriter(OutputStream outputStream, String str) throws UnsupportedEncodingException {
        return new PrintWriter(new OutputStreamWriter(outputStream, str));
    }

    public static OutputStream getBufferedOutputStream(String str) throws FileNotFoundException {
        return new BufferedOutputStream(new FileOutputStream(str));
    }

    public static OutputStream wrapWithBufferedOutputStream(OutputStream outputStream) {
        return ((outputStream instanceof ByteArrayOutputStream) || (outputStream instanceof BufferedOutputStream)) ? outputStream : new BufferedOutputStream(outputStream);
    }

    public static File constructFileByDirectoryAndName(String str, String str2) {
        return new File(str, str2);
    }

    public static File createTempFile(String str) throws IOException {
        File file = new File(str);
        return file.isDirectory() ? File.createTempFile("pdf", null, file) : file;
    }

    public static FileOutputStream getFileOutputStream(File file) throws FileNotFoundException {
        return new FileOutputStream(file);
    }

    public static InputStream getInputStreamForFile(String str) throws IOException {
        return Files.newInputStream(Paths.get(str, new String[0]), new OpenOption[0]);
    }

    public static OutputStream getFileOutputStream(String str) throws IOException {
        return Files.newOutputStream(Paths.get(str, new String[0]), new OpenOption[0]);
    }

    public static RandomAccessFile getRandomAccessFile(File file) throws FileNotFoundException {
        return new RandomAccessFile(file, "rw");
    }

    public static void createDirectories(String str) {
        new File(str).mkdirs();
    }

    public static String getParentDirectoryUri(File file) throws MalformedURLException {
        return file != null ? Paths.get(file.getParent(), new String[0]).toUri().toURL().toExternalForm() : "";
    }

    public static boolean deleteFile(File file) {
        return file.delete();
    }

    public static String parentDirectory(URL url) throws URISyntaxException {
        return url.toURI().resolve(".").toString();
    }

    public static File createTempFile(String str, String str2) throws IOException {
        return File.createTempFile(str, str2);
    }

    public static String createTempCopy(String str, String str2, String str3) throws IOException {
        Path pathCreateTempFile = null;
        try {
            pathCreateTempFile = Files.createTempFile(str2, str3, new FileAttribute[0]);
            Files.copy(Paths.get(str, new String[0]), pathCreateTempFile, StandardCopyOption.REPLACE_EXISTING);
            return pathCreateTempFile.toString();
        } catch (IOException e) {
            if (pathCreateTempFile != null) {
                removeFiles(new String[]{pathCreateTempFile.toString()});
            }
            throw e;
        }
    }

    public static void copy(String str, String str2) throws IOException {
        Files.copy(Paths.get(str, new String[0]), Paths.get(str2, new String[0]), StandardCopyOption.REPLACE_EXISTING);
    }

    public static String createTempDirectory(String str) throws IOException {
        return Files.createTempDirectory(str, new FileAttribute[0]).toString();
    }

    public static boolean removeFiles(String[] strArr) {
        boolean z = true;
        for (String str : strArr) {
            if (str != null) {
                try {
                    Files.delete(Paths.get(str, new String[0]));
                } catch (Exception unused) {
                    z = false;
                }
            }
        }
        return z;
    }

    private static class CaseSensitiveFileComparator implements Comparator<File> {
        private CaseSensitiveFileComparator() {
        }

        @Override // java.util.Comparator
        public int compare(File file, File file2) {
            return file.getPath().compareTo(file2.getPath());
        }
    }
}
