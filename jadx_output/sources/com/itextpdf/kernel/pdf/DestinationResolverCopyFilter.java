package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.navigation.PdfDestination;
import com.itextpdf.kernel.utils.ICopyFilter;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;

/* JADX INFO: loaded from: classes6.dex */
public class DestinationResolverCopyFilter implements ICopyFilter {
    private static final List<PdfName> EXCLUDE_KEYS_ACTIONCOPY = Collections.singletonList(PdfName.f2992D);
    private final PdfDocument fromDocument;
    private final PdfDocument targetDocument;

    static /* synthetic */ void lambda$processAction$5(PdfDestination pdfDestination) {
    }

    static /* synthetic */ void lambda$processLinkAnnotion$1(PdfDestination pdfDestination) {
    }

    static /* synthetic */ void lambda$processLinkAnnotion$3(PdfDestination pdfDestination) {
    }

    public DestinationResolverCopyFilter(PdfDocument pdfDocument, PdfDocument pdfDocument2) {
        this.fromDocument = pdfDocument;
        this.targetDocument = pdfDocument2;
    }

    @Override // com.itextpdf.kernel.utils.ICopyFilter
    public boolean shouldProcess(PdfObject pdfObject, PdfName pdfName, PdfObject pdfObject2) {
        PdfObject directPdfObject = getDirectPdfObject(pdfObject2);
        if (directPdfObject.getType() != 3) {
            return true;
        }
        PdfDictionary pdfDictionary = (PdfDictionary) directPdfObject;
        if (pdfDictionary.getAsName(PdfName.f3065S) == PdfName.GoTo) {
            processAction(pdfObject, pdfName, pdfDictionary);
            return false;
        }
        if (PdfName.Link.equals(pdfDictionary.getAsName(PdfName.Subtype)) && pdfObject.isDictionary()) {
            return processLinkAnnotion(pdfObject, pdfObject2, pdfDictionary);
        }
        return true;
    }

    private boolean processLinkAnnotion(final PdfObject pdfObject, final PdfObject pdfObject2, PdfDictionary pdfDictionary) {
        if (pdfDictionary.get(PdfName.Dest) != null) {
            this.fromDocument.storeDestinationToReaddress(PdfDestination.makeDestination(pdfDictionary.get(PdfName.Dest)), new Consumer() { // from class: com.itextpdf.kernel.pdf.DestinationResolverCopyFilter$$ExternalSyntheticLambda2
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    this.f$0.m2662x210e2111(pdfObject2, pdfObject, (PdfDestination) obj);
                }
            }, new Consumer() { // from class: com.itextpdf.kernel.pdf.DestinationResolverCopyFilter$$ExternalSyntheticLambda3
                @Override // java.util.function.Consumer
                public final void accept(Object obj) {
                    DestinationResolverCopyFilter.lambda$processLinkAnnotion$1((PdfDestination) obj);
                }
            });
            return false;
        }
        if (pdfDictionary.getAsDictionary(PdfName.f2967A) == null || pdfDictionary.getAsDictionary(PdfName.f2967A).get(PdfName.f2992D) == null) {
            return true;
        }
        this.fromDocument.storeDestinationToReaddress(PdfDestination.makeDestination(pdfDictionary.getAsDictionary(PdfName.f2967A).get(PdfName.f2992D)), new Consumer() { // from class: com.itextpdf.kernel.pdf.DestinationResolverCopyFilter$$ExternalSyntheticLambda4
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2663x73b6cb93(pdfObject2, pdfObject, (PdfDestination) obj);
            }
        }, new Consumer() { // from class: com.itextpdf.kernel.pdf.DestinationResolverCopyFilter$$ExternalSyntheticLambda5
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DestinationResolverCopyFilter.lambda$processLinkAnnotion$3((PdfDestination) obj);
            }
        });
        return false;
    }

    /* JADX INFO: renamed from: lambda$processLinkAnnotion$0$com-itextpdf-kernel-pdf-DestinationResolverCopyFilter */
    /* synthetic */ void m2662x210e2111(PdfObject pdfObject, PdfObject pdfObject2, PdfDestination pdfDestination) {
        new PdfPage((PdfDictionary) pdfObject2).addAnnotation(-1, PdfAnnotation.makeAnnotation(pdfObject.copyTo(this.targetDocument, this)), false);
    }

    /* JADX INFO: renamed from: lambda$processLinkAnnotion$2$com-itextpdf-kernel-pdf-DestinationResolverCopyFilter */
    /* synthetic */ void m2663x73b6cb93(PdfObject pdfObject, PdfObject pdfObject2, PdfDestination pdfDestination) {
        PdfObject pdfObjectCopyTo = pdfObject.copyTo(this.targetDocument);
        ((PdfDictionary) pdfObjectCopyTo).getAsDictionary(PdfName.f2967A).put(PdfName.f2992D, pdfDestination.getPdfObject());
        new PdfPage((PdfDictionary) pdfObject2).addAnnotation(-1, PdfAnnotation.makeAnnotation(pdfObjectCopyTo), false);
    }

    private void processAction(final PdfObject pdfObject, final PdfName pdfName, final PdfDictionary pdfDictionary) {
        this.fromDocument.storeDestinationToReaddress(PdfDestination.makeDestination(pdfDictionary.get(PdfName.f2992D)), new Consumer() { // from class: com.itextpdf.kernel.pdf.DestinationResolverCopyFilter$$ExternalSyntheticLambda0
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                this.f$0.m2661xd90442ef(pdfDictionary, pdfObject, pdfName, (PdfDestination) obj);
            }
        }, new Consumer() { // from class: com.itextpdf.kernel.pdf.DestinationResolverCopyFilter$$ExternalSyntheticLambda1
            @Override // java.util.function.Consumer
            public final void accept(Object obj) {
                DestinationResolverCopyFilter.lambda$processAction$5((PdfDestination) obj);
            }
        });
    }

    /* JADX INFO: renamed from: lambda$processAction$4$com-itextpdf-kernel-pdf-DestinationResolverCopyFilter */
    /* synthetic */ void m2661xd90442ef(PdfDictionary pdfDictionary, PdfObject pdfObject, PdfName pdfName, PdfDestination pdfDestination) {
        PdfDictionary pdfDictionaryCopyTo = pdfDictionary.copyTo(this.targetDocument, EXCLUDE_KEYS_ACTIONCOPY, false);
        pdfDictionaryCopyTo.put(PdfName.f2992D, pdfDestination.getPdfObject());
        if (pdfObject.getType() == 3) {
            ((PdfDictionary) pdfObject).put(pdfName, pdfDictionaryCopyTo);
        } else {
            ((PdfArray) pdfObject).add(pdfDictionaryCopyTo);
        }
    }

    private static PdfObject getDirectPdfObject(PdfObject pdfObject) {
        return pdfObject.isIndirectReference() ? ((PdfIndirectReference) pdfObject).getRefersTo() : pdfObject;
    }
}
