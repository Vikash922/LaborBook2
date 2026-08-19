package com.itextpdf.pdfa.checker;

import com.itextpdf.kernel.pdf.PdfAConformanceLevel;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.pdfa.exceptions.PdfAConformanceException;
import com.itextpdf.pdfa.logs.PdfAConformanceLogMessageConstant;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfA3Checker extends PdfA2Checker {
    protected static final Set<PdfName> allowedAFRelationships = Collections.unmodifiableSet(new HashSet(Arrays.asList(PdfName.Source, PdfName.Data, PdfName.Alternative, PdfName.Supplement, PdfName.Unspecified)));

    public PdfA3Checker(PdfAConformanceLevel pdfAConformanceLevel) {
        super(pdfAConformanceLevel);
    }

    @Override // com.itextpdf.pdfa.checker.PdfA2Checker, com.itextpdf.pdfa.checker.PdfA1Checker, com.itextpdf.pdfa.checker.PdfAChecker
    protected void checkFileSpec(PdfDictionary pdfDictionary) {
        PdfName asName = pdfDictionary.getAsName(PdfName.AFRelationship);
        if (asName == null || !allowedAFRelationships.contains(asName)) {
            throw new PdfAConformanceException(PdfAConformanceException.f3252x2d643492);
        }
        if (pdfDictionary.containsKey(PdfName.f3001EF)) {
            if (!pdfDictionary.containsKey(PdfName.f3004F) || !pdfDictionary.containsKey(PdfName.f3085UF) || !pdfDictionary.containsKey(PdfName.Desc)) {
                throw new PdfAConformanceException(PdfAConformanceException.FILE_SPECIFICATION_DICTIONARY_SHALL_CONTAIN_F_KEY_AND_UF_KEY);
            }
            PdfStream asStream = pdfDictionary.getAsDictionary(PdfName.f3001EF).getAsStream(PdfName.f3004F);
            if (asStream == null) {
                throw new PdfAConformanceException(PdfAConformanceException.f3250x7f5ec81);
            }
            if (!asStream.containsKey(PdfName.Subtype)) {
                throw new PdfAConformanceException(PdfAConformanceException.f3257xd73efa40);
            }
            if (asStream.containsKey(PdfName.Params)) {
                PdfObject pdfObject = asStream.get(PdfName.Params);
                if (!pdfObject.isDictionary()) {
                    throw new PdfAConformanceException(PdfAConformanceException.EMBEDDED_FILE_SHALL_CONTAIN_PARAMS_KEY_WITH_DICTIONARY_AS_VALUE);
                }
                if (((PdfDictionary) pdfObject).getAsString(PdfName.ModDate) == null) {
                    throw new PdfAConformanceException(PdfAConformanceException.EMBEDDED_FILE_SHALL_CONTAIN_PARAMS_KEY_WITH_VALID_MODDATE_KEY);
                }
                return;
            }
            LoggerFactory.getLogger((Class<?>) PdfAChecker.class).warn(PdfAConformanceLogMessageConstant.EMBEDDED_FILE_SHOULD_CONTAIN_PARAMS_KEY);
        }
    }
}
