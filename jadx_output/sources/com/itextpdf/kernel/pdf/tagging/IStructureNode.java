package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.kernel.pdf.PdfName;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public interface IStructureNode {
    List<IStructureNode> getKids();

    IStructureNode getParent();

    PdfName getRole();
}
