package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfStructTreeRoot;
import com.itextpdf.kernel.pdf.tagging.StandardNamespaces;

/* JADX INFO: loaded from: classes6.dex */
class RoleMappingResolver implements IRoleMappingResolver {
    private PdfName currRole;
    private PdfDictionary roleMap;

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public PdfNamespace getNamespace() {
        return null;
    }

    RoleMappingResolver(String str, PdfDocument pdfDocument) {
        this.currRole = PdfStructTreeRoot.convertRoleToPdfName(str);
        this.roleMap = pdfDocument.getStructTreeRoot().getRoleMap();
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public String getRole() {
        return this.currRole.getValue();
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public boolean currentRoleIsStandard() {
        return StandardNamespaces.roleBelongsToStandardNamespace(this.currRole.getValue(), StandardNamespaces.PDF_1_7);
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public boolean currentRoleShallBeMappedToStandard() {
        return !currentRoleIsStandard();
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public boolean resolveNextMapping() {
        PdfName asName = this.roleMap.getAsName(this.currRole);
        if (asName == null) {
            return false;
        }
        this.currRole = asName;
        return true;
    }
}
