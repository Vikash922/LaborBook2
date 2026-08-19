package com.itextpdf.commons.utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes6.dex */
public final class SystemUtil {
    private static final String SPLIT_REGEX = "((\".+?\"|[^'\\s]|'.+?')+)\\s*";

    public static long getTimeBasedSeed() {
        return System.currentTimeMillis();
    }

    public static int getTimeBasedIntSeed() {
        return (int) System.currentTimeMillis();
    }

    private SystemUtil() {
    }

    public static long getRelativeTimeMillis() {
        return System.currentTimeMillis();
    }

    public static long getFreeMemory() {
        return Runtime.getRuntime().freeMemory();
    }

    public static String getPropertyOrEnvironmentVariable(String str) {
        String property = System.getProperty(str);
        return property == null ? System.getenv(str) : property;
    }

    public static boolean runProcessAndWait(String str, String str2) throws InterruptedException, IOException {
        return runProcessAndWait(str, str2, null);
    }

    public static boolean runProcessAndWait(String str, String str2, String str3) throws InterruptedException, IOException {
        return runProcessAndGetExitCode(str, str2, str3) == 0;
    }

    public static int runProcessAndGetExitCode(String str, String str2) throws InterruptedException, IOException {
        return runProcessAndGetExitCode(str, str2, null);
    }

    public static int runProcessAndGetExitCode(String str, String str2, String str3) throws InterruptedException, IOException {
        Process processRunProcess = runProcess(str, str2, str3);
        System.out.println(getProcessOutput(processRunProcess));
        return processRunProcess.waitFor();
    }

    public static String runProcessAndGetOutput(String str, String str2) throws IOException {
        return getProcessOutput(runProcess(str, str2, null));
    }

    public static StringBuilder runProcessAndCollectErrors(String str, String str2) throws IOException {
        return printProcessErrorsOutput(runProcess(str, str2, null));
    }

    public static ProcessInfo runProcessAndGetProcessInfo(String str, String str2) throws InterruptedException, IOException {
        Process processRunProcess = runProcess(str, str2, null);
        return new ProcessInfo(processRunProcess.waitFor(), printProcessStandardOutput(processRunProcess).toString(), printProcessErrorsOutput(processRunProcess).toString());
    }

    static Process runProcess(String str, String str2, String str3) throws IOException {
        String[] strArr = (String[]) prepareProcessArguments(str, str2).toArray(new String[0]);
        if (str3 != null) {
            return Runtime.getRuntime().exec(strArr, (String[]) null, new File(str3));
        }
        return Runtime.getRuntime().exec(strArr);
    }

    static List<String> prepareProcessArguments(String str, String str2) {
        ArrayList arrayList;
        if (new File(str).exists()) {
            arrayList = new ArrayList(Collections.singletonList(str));
        } else {
            arrayList = new ArrayList(splitIntoProcessArguments(str));
        }
        arrayList.addAll(splitIntoProcessArguments(str2));
        return arrayList;
    }

    static List<String> splitIntoProcessArguments(String str) {
        ArrayList arrayList = new ArrayList();
        Matcher matcher = Pattern.compile(SPLIT_REGEX).matcher(str);
        while (matcher.find()) {
            arrayList.add(matcher.group(1).replace("'", "").replace("\"", "").trim());
        }
        return arrayList;
    }

    static String getProcessOutput(Process process) throws IOException {
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(process.getInputStream()));
        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(process.getErrorStream()));
        StringBuilder sb = new StringBuilder();
        while (true) {
            String line = bufferedReader.readLine();
            if (line == null) {
                break;
            }
            sb.append(line);
        }
        bufferedReader.close();
        if (sb.length() > 0) {
            sb.append('\n');
        }
        while (true) {
            String line2 = bufferedReader2.readLine();
            if (line2 != null) {
                sb.append(line2);
            } else {
                bufferedReader2.close();
                return sb.toString();
            }
        }
    }

    static StringBuilder printProcessErrorsOutput(Process process) throws IOException {
        return printProcessOutput(process.getErrorStream());
    }

    static StringBuilder printProcessStandardOutput(Process process) throws IOException {
        return printProcessOutput(process.getInputStream());
    }

    private static StringBuilder printProcessOutput(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
        while (true) {
            String line = bufferedReader.readLine();
            if (line != null) {
                System.out.println(line);
                sb.append(line);
            } else {
                bufferedReader.close();
                return sb;
            }
        }
    }
}
