package com.itextpdf.kernel.pdf;

import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;

/* JADX INFO: loaded from: classes6.dex */
public class PdfViewerPreferences extends PdfObjectWrapper<PdfDictionary> {

    public enum PdfViewerPreferencesConstants {
        USE_NONE,
        USE_OUTLINES,
        USE_THUMBS,
        USE_OC,
        LEFT_TO_RIGHT,
        RIGHT_TO_LEFT,
        MEDIA_BOX,
        CROP_BOX,
        BLEED_BOX,
        TRIM_BOX,
        ART_BOX,
        VIEW_AREA,
        VIEW_CLIP,
        PRINT_AREA,
        PRINT_CLIP,
        NONE,
        APP_DEFAULT,
        SIMPLEX,
        DUPLEX_FLIP_SHORT_EDGE,
        DUPLEX_FLIP_LONG_EDGE
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return false;
    }

    public PdfViewerPreferences() {
        this(new PdfDictionary());
    }

    public PdfViewerPreferences(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
    }

    public PdfViewerPreferences setHideToolbar(boolean z) {
        return put(PdfName.HideToolbar, PdfBoolean.valueOf(z));
    }

    public PdfViewerPreferences setHideMenubar(boolean z) {
        return put(PdfName.HideMenubar, PdfBoolean.valueOf(z));
    }

    public PdfViewerPreferences setHideWindowUI(boolean z) {
        return put(PdfName.HideWindowUI, PdfBoolean.valueOf(z));
    }

    public PdfViewerPreferences setFitWindow(boolean z) {
        return put(PdfName.FitWindow, PdfBoolean.valueOf(z));
    }

    public PdfViewerPreferences setCenterWindow(boolean z) {
        return put(PdfName.CenterWindow, PdfBoolean.valueOf(z));
    }

    public PdfViewerPreferences setDisplayDocTitle(boolean z) {
        return put(PdfName.DisplayDocTitle, PdfBoolean.valueOf(z));
    }

    public PdfViewerPreferences setNonFullScreenPageMode(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        int i = C34751.f3108xe46edd1f[pdfViewerPreferencesConstants.ordinal()];
        if (i == 1) {
            put(PdfName.NonFullScreenPageMode, PdfName.UseNone);
        } else if (i == 2) {
            put(PdfName.NonFullScreenPageMode, PdfName.UseOutlines);
        } else if (i == 3) {
            put(PdfName.NonFullScreenPageMode, PdfName.UseThumbs);
        } else if (i == 4) {
            put(PdfName.NonFullScreenPageMode, PdfName.UseOC);
        }
        return this;
    }

    public PdfViewerPreferences setDirection(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        int i = C34751.f3108xe46edd1f[pdfViewerPreferencesConstants.ordinal()];
        if (i == 5) {
            put(PdfName.Direction, PdfName.L2R);
        } else if (i == 6) {
            put(PdfName.Direction, PdfName.R2L);
        }
        return this;
    }

    public PdfViewerPreferences setViewArea(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        return setPageBoundary(PdfViewerPreferencesConstants.VIEW_AREA, pdfViewerPreferencesConstants);
    }

    public PdfViewerPreferences setViewClip(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        return setPageBoundary(PdfViewerPreferencesConstants.VIEW_CLIP, pdfViewerPreferencesConstants);
    }

    public PdfViewerPreferences setPrintArea(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        return setPageBoundary(PdfViewerPreferencesConstants.PRINT_AREA, pdfViewerPreferencesConstants);
    }

    public PdfViewerPreferences setPrintClip(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        return setPageBoundary(PdfViewerPreferencesConstants.PRINT_CLIP, pdfViewerPreferencesConstants);
    }

    public PdfViewerPreferences setPrintScaling(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        int i = C34751.f3108xe46edd1f[pdfViewerPreferencesConstants.ordinal()];
        if (i == 7) {
            put(PdfName.PrintScaling, PdfName.None);
        } else if (i == 8) {
            put(PdfName.PrintScaling, PdfName.AppDefault);
        }
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public PdfViewerPreferences setDuplex(PdfViewerPreferencesConstants pdfViewerPreferencesConstants) {
        switch (pdfViewerPreferencesConstants) {
            case SIMPLEX:
                put(PdfName.Duplex, PdfName.Simplex);
                return this;
            case DUPLEX_FLIP_SHORT_EDGE:
                put(PdfName.Duplex, PdfName.DuplexFlipShortEdge);
                return this;
            case DUPLEX_FLIP_LONG_EDGE:
                put(PdfName.Duplex, PdfName.DuplexFlipLongEdge);
                return this;
            default:
                return this;
        }
    }

    public PdfViewerPreferences setPickTrayByPDFSize(boolean z) {
        return put(PdfName.PickTrayByPDFSize, PdfBoolean.valueOf(z));
    }

    public PdfViewerPreferences setPrintPageRange(int[] iArr) {
        return put(PdfName.PrintPageRange, new PdfArray(iArr));
    }

    public PdfViewerPreferences setNumCopies(int i) {
        return put(PdfName.NumCopies, new PdfNumber(i));
    }

    public PdfViewerPreferences setEnforce(PdfArray pdfArray) {
        PdfName asName;
        for (int i = 0; i < pdfArray.size(); i++) {
            PdfName asName2 = pdfArray.getAsName(i);
            if (asName2 == null) {
                throw new IllegalArgumentException("Enforce array shall contain PdfName entries");
            }
            if (PdfName.PrintScaling.equals(asName2) && ((asName = getPdfObject().getAsName(PdfName.PrintScaling)) == null || PdfName.AppDefault.equals(asName))) {
                throw new PdfException(KernelExceptionMessageConstant.PRINT_SCALING_ENFORCE_ENTRY_INVALID);
            }
        }
        return put(PdfName.Enforce, pdfArray);
    }

    public PdfArray getEnforce() {
        return getPdfObject().getAsArray(PdfName.Enforce);
    }

    public PdfViewerPreferences put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private PdfViewerPreferences setPageBoundary(PdfViewerPreferencesConstants pdfViewerPreferencesConstants, PdfViewerPreferencesConstants pdfViewerPreferencesConstants2) {
        PdfName pdfName;
        switch (pdfViewerPreferencesConstants) {
            case VIEW_AREA:
                pdfName = PdfName.ViewArea;
                break;
            case VIEW_CLIP:
                pdfName = PdfName.ViewClip;
                break;
            case PRINT_AREA:
                pdfName = PdfName.PrintArea;
                break;
            case PRINT_CLIP:
                pdfName = PdfName.PrintClip;
                break;
            default:
                pdfName = null;
                break;
        }
        if (pdfName != null) {
            switch (pdfViewerPreferencesConstants2) {
                case MEDIA_BOX:
                    put(pdfName, PdfName.MediaBox);
                    break;
                case CROP_BOX:
                    put(pdfName, PdfName.CropBox);
                    break;
                case BLEED_BOX:
                    put(pdfName, PdfName.BleedBox);
                    break;
                case TRIM_BOX:
                    put(pdfName, PdfName.TrimBox);
                    break;
                case ART_BOX:
                    put(pdfName, PdfName.ArtBox);
                    break;
            }
        }
        return this;
    }
}
