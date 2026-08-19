package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.tagging.PdfNamespace;

/* JADX INFO: loaded from: classes6.dex */
public interface IRoleMappingResolver {
    boolean currentRoleIsStandard();

    boolean currentRoleShallBeMappedToStandard();

    PdfNamespace getNamespace();

    String getRole();

    boolean resolveNextMapping();
}
