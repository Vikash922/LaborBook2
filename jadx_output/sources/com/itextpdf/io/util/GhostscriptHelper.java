package com.itextpdf.io.util;

import com.amplitude.core.events.Identify;
import com.itextpdf.commons.utils.FileUtil;
import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.commons.utils.SystemUtil;
import com.itextpdf.io.exceptions.IoExceptionMessage;
import com.itextpdf.styledxmlparser.css.CommonCssConstants;
import java.nio.file.Paths;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public class GhostscriptHelper {
    public static final String GHOSTSCRIPT_ENVIRONMENT_VARIABLE = "ITEXT_GS_EXEC";

    @Deprecated
    static final String GHOSTSCRIPT_ENVIRONMENT_VARIABLE_LEGACY = "gsExec";
    static final String GHOSTSCRIPT_KEYWORD = "GPL Ghostscript";
    private static final String GHOSTSCRIPT_PARAMS = " -dSAFER -dNOPAUSE -dBATCH -sDEVICE=png16m -r150 {0} -sOutputFile=\"{1}\" \"{2}\"";
    private static final Pattern PAGE_LIST_REGEX = Pattern.compile("^(\\d+,)*\\d+$");
    private static final String PAGE_NUMBER_PATTERN = "%03d";
    private static final String RENDERED_IMAGE_EXTENSION = "png";
    private static final String TEMP_FILE_PREFIX = "itext_gs_io_temp";
    private String gsExec;

    public GhostscriptHelper() {
        this(null);
    }

    public GhostscriptHelper(String str) {
        this.gsExec = str;
        if (str == null) {
            String propertyOrEnvironmentVariable = SystemUtil.getPropertyOrEnvironmentVariable(GHOSTSCRIPT_ENVIRONMENT_VARIABLE);
            this.gsExec = propertyOrEnvironmentVariable;
            if (propertyOrEnvironmentVariable == null) {
                this.gsExec = SystemUtil.getPropertyOrEnvironmentVariable(GHOSTSCRIPT_ENVIRONMENT_VARIABLE_LEGACY);
            }
        }
        if (!CliCommandUtil.isVersionCommandExecutable(this.gsExec, GHOSTSCRIPT_KEYWORD)) {
            throw new IllegalArgumentException(IoExceptionMessage.GS_ENVIRONMENT_VARIABLE_IS_NOT_SPECIFIED);
        }
    }

    public String getCliExecutionCommand() {
        return this.gsExec;
    }

    public void runGhostScriptImageGeneration(String str, String str2, String str3) throws Throwable {
        runGhostScriptImageGeneration(str, str2, str3, null);
    }

    public void runGhostScriptImageGeneration(String str, String str2, String str3, String str4) throws Throwable {
        String strCreateTempDirectory;
        String strCreateTempCopy;
        if (!FileUtil.directoryExists(str2)) {
            throw new IllegalArgumentException(IoExceptionMessage.CANNOT_OPEN_OUTPUT_DIRECTORY.replace("<filename>", str));
        }
        if (!validateImageFilePattern(str3)) {
            throw new IllegalArgumentException("Invalid output image pattern: " + str3);
        }
        if (!validatePageList(str4)) {
            throw new IllegalArgumentException("Invalid page list: " + str4);
        }
        String strReplace = str4 == null ? "" : "-sPageList=<pagelist>".replace("<pagelist>", str4);
        try {
            strCreateTempCopy = FileUtil.createTempCopy(str, TEMP_FILE_PREFIX, null);
            try {
                strCreateTempDirectory = FileUtil.createTempDirectory(TEMP_FILE_PREFIX);
                try {
                    if (!SystemUtil.runProcessAndWait(this.gsExec, MessageFormatUtil.format(GHOSTSCRIPT_PARAMS, strReplace, Paths.get(strCreateTempDirectory, "itext_gs_io_temp%03d.png").toString(), strCreateTempCopy))) {
                        FileUtil.listFilesInDirectory(strCreateTempDirectory, false);
                        throw new GhostscriptExecutionException(IoExceptionMessage.GHOSTSCRIPT_FAILED.replace("<filename>", str));
                    }
                    String[] strArrListFilesInDirectory = FileUtil.listFilesInDirectory(strCreateTempDirectory, false);
                    if (strArrListFilesInDirectory != null) {
                        int i = 0;
                        while (i < strArrListFilesInDirectory.length) {
                            String str5 = strArrListFilesInDirectory[i];
                            i++;
                            FileUtil.copy(str5, Paths.get(str2, str3 + Identify.UNSET_VALUE + formatImageNumber(i) + "." + RENDERED_IMAGE_EXTENSION).toString());
                        }
                    }
                    if (strArrListFilesInDirectory != null) {
                        FileUtil.removeFiles(strArrListFilesInDirectory);
                    }
                    FileUtil.removeFiles(new String[]{strCreateTempDirectory, strCreateTempCopy});
                } catch (Throwable th) {
                    th = th;
                    if (0 != 0) {
                        FileUtil.removeFiles(null);
                    }
                    FileUtil.removeFiles(new String[]{strCreateTempDirectory, strCreateTempCopy});
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                strCreateTempDirectory = null;
            }
        } catch (Throwable th3) {
            th = th3;
            strCreateTempDirectory = null;
            strCreateTempCopy = null;
        }
    }

    public static class GhostscriptExecutionException extends RuntimeException {
        public GhostscriptExecutionException(String str) {
            super(str);
        }
    }

    static boolean validatePageList(String str) {
        return str == null || PAGE_LIST_REGEX.matcher(str).matches();
    }

    static boolean validateImageFilePattern(String str) {
        return (str == null || str.trim().isEmpty() || str.contains(CommonCssConstants.PERCENTAGE)) ? false : true;
    }

    static String formatImageNumber(int i) {
        StringBuilder sb = new StringBuilder();
        for (int i2 = i; i2 / 100 == 0; i2 *= 10) {
            sb.append('0');
        }
        sb.append(i);
        return sb.toString();
    }
}
