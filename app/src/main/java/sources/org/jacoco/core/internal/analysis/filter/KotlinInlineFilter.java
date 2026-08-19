package org.jacoco.core.internal.analysis.filter;

import java.io.BufferedReader;
import java.io.IOException;
import java.util.regex.Pattern;
import org.objectweb.asm.tree.AbstractInsnNode;
import org.objectweb.asm.tree.LineNumberNode;
import org.objectweb.asm.tree.MethodNode;

/* JADX INFO: loaded from: classes4.dex */
public final class KotlinInlineFilter implements IFilter {
    private int firstGeneratedLineNumber = -1;
    private static final Pattern LINE_INFO_PATTERN = Pattern.compile("([0-9]++)(#[0-9]++)?+(,[0-9]++)?+:([0-9]++)(,[0-9]++)?+");
    private static final Pattern FILE_INFO_PATTERN = Pattern.compile("\\+ ([0-9]++) (.++)");

    @Override // org.jacoco.core.internal.analysis.filter.IFilter
    public void filter(MethodNode methodNode, IFilterContext iFilterContext, IFilterOutput iFilterOutput) {
        if (iFilterContext.getSourceDebugExtension() != null && KotlinGeneratedFilter.isKotlinClass(iFilterContext)) {
            if (this.firstGeneratedLineNumber == -1) {
                this.firstGeneratedLineNumber = getFirstGeneratedLineNumber(iFilterContext.getSourceFileName(), iFilterContext.getSourceDebugExtension());
            }
            int i = 0;
            for (AbstractInsnNode abstractInsnNode : methodNode.instructions) {
                if (15 == abstractInsnNode.getType()) {
                    i = ((LineNumberNode) abstractInsnNode).line;
                }
                if (i >= this.firstGeneratedLineNumber) {
                    iFilterOutput.ignore(abstractInsnNode, abstractInsnNode);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x00de, code lost:
    
        return r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static int getFirstGeneratedLineNumber(java.lang.String r8, java.lang.String r9) {
        /*
            Method dump skipped, instruction units count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.jacoco.core.internal.analysis.filter.KotlinInlineFilter.getFirstGeneratedLineNumber(java.lang.String, java.lang.String):int");
    }

    private static void expectLine(BufferedReader bufferedReader, String str) throws IOException {
        String line = bufferedReader.readLine();
        if (!str.equals(line)) {
            throw new IllegalStateException("Unexpected SMAP line: " + line);
        }
    }
}
