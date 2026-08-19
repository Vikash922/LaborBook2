package com.itextpdf.kernel.pdf.tagutils;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfDocument;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.tagging.PdfNamespace;
import com.itextpdf.kernel.pdf.tagging.PdfStructTreeRoot;
import com.itextpdf.kernel.pdf.tagging.StandardNamespaces;

/* JADX INFO: loaded from: classes6.dex */
class RoleMappingResolverPdf2 implements IRoleMappingResolver {
    private PdfNamespace currNamespace;
    private PdfName currRole;
    private PdfNamespace defaultNamespace;

    RoleMappingResolverPdf2(String str, PdfNamespace pdfNamespace, PdfDocument pdfDocument) {
        this.currRole = PdfStructTreeRoot.convertRoleToPdfName(str);
        this.currNamespace = pdfNamespace;
        String str2 = StandardNamespaces.getDefault();
        PdfNamespace namespaceRoleMap = new PdfNamespace(str2).setNamespaceRoleMap(pdfDocument.getStructTreeRoot().getRoleMap());
        this.defaultNamespace = namespaceRoleMap;
        if (this.currNamespace == null) {
            this.currNamespace = namespaceRoleMap;
        }
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public String getRole() {
        return this.currRole.getValue();
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public PdfNamespace getNamespace() {
        return this.currNamespace;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public boolean currentRoleIsStandard() {
        String value = this.currRole.getValue();
        return (StandardNamespaces.PDF_1_7.equals(this.currNamespace.getNamespaceName()) && StandardNamespaces.roleBelongsToStandardNamespace(value, StandardNamespaces.PDF_1_7)) || (StandardNamespaces.PDF_2_0.equals(this.currNamespace.getNamespaceName()) && StandardNamespaces.roleBelongsToStandardNamespace(value, StandardNamespaces.PDF_2_0));
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public boolean currentRoleShallBeMappedToStandard() {
        return (currentRoleIsStandard() || StandardNamespaces.isKnownDomainSpecificNamespace(this.currNamespace)) ? false : true;
    }

    @Override // com.itextpdf.kernel.pdf.tagutils.IRoleMappingResolver
    public boolean resolveNextMapping() {
        PdfDictionary asDictionary;
        PdfDictionary namespaceRoleMap = this.currNamespace.getNamespaceRoleMap();
        PdfName asName = null;
        PdfObject pdfObject = namespaceRoleMap != null ? namespaceRoleMap.get(this.currRole) : null;
        boolean z = false;
        if (pdfObject == null) {
            return false;
        }
        if (pdfObject.isName()) {
            this.currRole = (PdfName) pdfObject;
            this.currNamespace = this.defaultNamespace;
            return true;
        }
        if (!pdfObject.isArray()) {
            return false;
        }
        PdfArray pdfArray = (PdfArray) pdfObject;
        if (pdfArray.size() > 1) {
            asName = pdfArray.getAsName(0);
            asDictionary = pdfArray.getAsDictionary(1);
        } else {
            asDictionary = null;
        }
        if (asName != null && asDictionary != null) {
            z = true;
        }
        if (!z) {
            return z;
        }
        this.currRole = asName;
        this.currNamespace = new PdfNamespace(asDictionary);
        return z;
    }
}
