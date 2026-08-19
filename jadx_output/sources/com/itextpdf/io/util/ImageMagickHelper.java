package com.itextpdf.io.util;

import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.commons.utils.ProcessInfo;
import com.itextpdf.commons.utils.SystemUtil;
import com.itextpdf.io.exceptions.IoExceptionMessage;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.shadow.apache.commons.lang3.StringUtils;

/* JADX INFO: loaded from: classes6.dex */
public class ImageMagickHelper {
    public static final String MAGICK_COMPARE_ENVIRONMENT_VARIABLE = "ITEXT_MAGICK_COMPARE_EXEC";

    @Deprecated
    static final String MAGICK_COMPARE_ENVIRONMENT_VARIABLE_LEGACY = "compareExec";
    static final String MAGICK_COMPARE_KEYWORD = "ImageMagick Studio LLC";
    private static final String TEMP_FILE_PREFIX = "itext_im_io_temp";
    private String compareExec;
    private static final String DIFF_PIXELS_OUTPUT_REGEXP = "^\\d+\\.*\\d*(e\\+\\d+)?";
    private static final Pattern pattern = Pattern.compile(DIFF_PIXELS_OUTPUT_REGEXP);

    public ImageMagickHelper() {
        this(null);
    }

    public ImageMagickHelper(String str) {
        this.compareExec = str;
        if (str == null) {
            String propertyOrEnvironmentVariable = SystemUtil.getPropertyOrEnvironmentVariable(MAGICK_COMPARE_ENVIRONMENT_VARIABLE);
            this.compareExec = propertyOrEnvironmentVariable;
            if (propertyOrEnvironmentVariable == null) {
                this.compareExec = SystemUtil.getPropertyOrEnvironmentVariable(MAGICK_COMPARE_ENVIRONMENT_VARIABLE_LEGACY);
            }
        }
        if (!CliCommandUtil.isVersionCommandExecutable(this.compareExec, MAGICK_COMPARE_KEYWORD)) {
            throw new IllegalArgumentException(IoExceptionMessage.COMPARE_COMMAND_SPECIFIED_INCORRECTLY);
        }
    }

    public String getCliExecutionCommand() {
        return this.compareExec;
    }

    public boolean runImageMagickImageCompare(String str, String str2, String str3) throws InterruptedException, IOException {
        return runImageMagickImageCompare(str, str2, str3, null);
    }

    public boolean runImageMagickImageCompare(String str, String str2, String str3, String str4) throws InterruptedException, IOException {
        return runImageMagickImageCompareAndGetResult(str, str2, str3, str4).isComparingResultSuccessful();
    }

    public boolean runImageMagickImageCompareWithThreshold(String str, String str2, String str3, String str4, long j) throws Throwable {
        ImageMagickCompareResult imageMagickCompareResultRunImageMagickImageCompareAndGetResult = runImageMagickImageCompareAndGetResult(str, str2, str3, str4);
        return imageMagickCompareResultRunImageMagickImageCompareAndGetResult.isComparingResultSuccessful() || imageMagickCompareResultRunImageMagickImageCompareAndGetResult.getDiffPixels() <= j;
    }

    public ImageMagickCompareResult runImageMagickImageCompareAndGetResult(String str, String str2, String str3, String str4) throws Throwable {
        String str5;
        String strCreateTempCopy;
        String strCreateTempCopy2;
        if (!validateFuzziness(str4)) {
            throw new IllegalArgumentException("Invalid fuzziness value: " + str4);
        }
        String strReplace = str4 == null ? "" : " -metric AE -fuzz <fuzzValue>%".replace("<fuzzValue>", str4);
        String absolutePath = null;
        try {
            strCreateTempCopy2 = FileUtil.createTempCopy(str, TEMP_FILE_PREFIX, null);
            try {
                strCreateTempCopy = FileUtil.createTempCopy(str2, TEMP_FILE_PREFIX, null);
            } catch (Throwable th) {
                th = th;
                strCreateTempCopy = null;
                absolutePath = strCreateTempCopy2;
                str5 = null;
            }
        } catch (Throwable th2) {
            th = th2;
            str5 = null;
            strCreateTempCopy = null;
        }
        try {
            absolutePath = FileUtil.createTempFile(TEMP_FILE_PREFIX, ".png").getAbsolutePath();
            ProcessInfo processInfoRunProcessAndGetProcessInfo = SystemUtil.runProcessAndGetProcessInfo(this.compareExec, strReplace + " '" + strCreateTempCopy2 + "' '" + strCreateTempCopy + "' '" + absolutePath + "'");
            ImageMagickCompareResult imageMagickCompareResult = new ImageMagickCompareResult(processInfoRunProcessAndGetProcessInfo.getExitCode() == 0, parseImageMagickProcessOutput(processInfoRunProcessAndGetProcessInfo.getProcessErrOutput()));
            if (FileUtil.fileExists(absolutePath)) {
                FileUtil.copy(absolutePath, str3);
            }
            FileUtil.removeFiles(new String[]{strCreateTempCopy2, strCreateTempCopy, absolutePath});
            return imageMagickCompareResult;
        } catch (Throwable th3) {
            th = th3;
            String str6 = absolutePath;
            absolutePath = strCreateTempCopy2;
            str5 = str6;
            FileUtil.removeFiles(new String[]{absolutePath, strCreateTempCopy, str5});
            throw th;
        }
    }

    static boolean validateFuzziness(String str) {
        if (str == null) {
            return true;
        }
        try {
            return Double.parseDouble(str) >= 0.0d;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    private static long parseImageMagickProcessOutput(String str) throws IOException {
        if (str == null) {
            throw new IllegalArgumentException(IoExceptionMessage.IMAGE_MAGICK_OUTPUT_IS_NULL);
        }
        if (str.isEmpty()) {
            return 0L;
        }
        String[] strArrSplit = str.split(StringUtils.LF);
        int length = strArrSplit.length;
        for (int i = 0; i < length; i++) {
            try {
                Matcher matcher = pattern.matcher(strArrSplit[i]);
                if (matcher.find()) {
                    return Double.valueOf(matcher.group()).longValue();
                }
                continue;
            } catch (NumberFormatException unused) {
            }
        }
        throw new IOException(IoExceptionMessage.IMAGE_MAGICK_PROCESS_EXECUTION_FAILED + str);
    }
}
