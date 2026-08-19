package com.itextpdf.kernel.pdf.tagging;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfNamespace extends PdfObjectWrapper<PdfDictionary> {
    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfNamespace(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        setForbidRelease();
    }

    public PdfNamespace(String str) {
        this(new PdfString(str));
    }

    public PdfNamespace(PdfString pdfString) {
        this(new PdfDictionary());
        put(PdfName.Type, PdfName.Namespace);
        put(PdfName.f3040NS, pdfString);
    }

    public PdfNamespace setNamespaceName(String str) {
        return setNamespaceName(new PdfString(str));
    }

    public PdfNamespace setNamespaceName(PdfString pdfString) {
        return put(PdfName.f3040NS, pdfString);
    }

    public String getNamespaceName() {
        PdfString asString = getPdfObject().getAsString(PdfName.f3040NS);
        if (asString != null) {
            return asString.toUnicodeString();
        }
        return null;
    }

    public PdfNamespace setSchema(PdfFileSpec pdfFileSpec) {
        return put(PdfName.Schema, pdfFileSpec.getPdfObject());
    }

    public PdfFileSpec getSchema() {
        return PdfFileSpec.wrapFileSpecObject(getPdfObject().get(PdfName.Schema));
    }

    public PdfNamespace setNamespaceRoleMap(PdfDictionary pdfDictionary) {
        return put(PdfName.RoleMapNS, pdfDictionary);
    }

    public PdfDictionary getNamespaceRoleMap() {
        return getNamespaceRoleMap(false);
    }

    public PdfNamespace addNamespaceRoleMapping(String str, String str2) {
        logOverwritingOfMappingIfNeeded(str, getNamespaceRoleMap(true).put(PdfStructTreeRoot.convertRoleToPdfName(str), PdfStructTreeRoot.convertRoleToPdfName(str2)));
        setModified();
        return this;
    }

    public PdfNamespace addNamespaceRoleMapping(String str, String str2, PdfNamespace pdfNamespace) {
        PdfArray pdfArray = new PdfArray();
        pdfArray.add(PdfStructTreeRoot.convertRoleToPdfName(str2));
        pdfArray.add(pdfNamespace.getPdfObject());
        logOverwritingOfMappingIfNeeded(str, getNamespaceRoleMap(true).put(PdfStructTreeRoot.convertRoleToPdfName(str), pdfArray));
        setModified();
        return this;
    }

    private PdfNamespace put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    private PdfDictionary getNamespaceRoleMap(boolean z) {
        PdfDictionary asDictionary = ((PdfDictionary) getPdfObject()).getAsDictionary(PdfName.RoleMapNS);
        if (!z || asDictionary != null) {
            return asDictionary;
        }
        PdfDictionary pdfDictionary = new PdfDictionary();
        put(PdfName.RoleMapNS, pdfDictionary);
        return pdfDictionary;
    }

    private void logOverwritingOfMappingIfNeeded(String str, PdfObject pdfObject) {
        if (pdfObject != null) {
            Logger logger = LoggerFactory.getLogger((Class<?>) PdfNamespace.class);
            String namespaceName = getNamespaceName();
            if (namespaceName == null) {
                namespaceName = "this";
            }
            logger.warn(MessageFormatUtil.format(IoLogMessageConstant.MAPPING_IN_NAMESPACE_OVERWRITTEN, str, namespaceName));
        }
    }
}
