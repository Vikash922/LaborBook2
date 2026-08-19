package com.itextpdf.commons.utils;

/* JADX INFO: loaded from: classes6.dex */
public final class ProcessInfo {
    private final int exitCode;
    private final String processErrOutput;
    private final String processStdOutput;

    public ProcessInfo(int i, String str, String str2) {
        this.exitCode = i;
        this.processStdOutput = str;
        this.processErrOutput = str2;
    }

    public int getExitCode() {
        return this.exitCode;
    }

    public String getProcessStdOutput() {
        return this.processStdOutput;
    }

    public String getProcessErrOutput() {
        return this.processErrOutput;
    }
}
