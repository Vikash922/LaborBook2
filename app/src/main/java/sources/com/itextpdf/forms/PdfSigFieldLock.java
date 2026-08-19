package com.itextpdf.forms;

import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfString;

/* JADX INFO: loaded from: classes6.dex */
public class PdfSigFieldLock extends PdfObjectWrapper<PdfDictionary> {

    public enum LockAction {
        ALL,
        INCLUDE,
        EXCLUDE
    }

    public enum LockPermissions {
        NO_CHANGES_ALLOWED,
        FORM_FILLING,
        FORM_FILLING_AND_ANNOTATION
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfSigFieldLock() {
        this(new PdfDictionary());
    }

    public PdfSigFieldLock(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        getPdfObject().put(PdfName.Type, PdfName.SigFieldLock);
    }

    public PdfSigFieldLock setDocumentPermissions(LockPermissions lockPermissions) {
        getPdfObject().put(PdfName.f3047P, getLockPermission(lockPermissions));
        return this;
    }

    public PdfSigFieldLock setFieldLock(LockAction lockAction, String... strArr) {
        PdfArray pdfArray = new PdfArray();
        for (String str : strArr) {
            pdfArray.add(new PdfString(str));
        }
        getPdfObject().put(PdfName.Action, getLockActionValue(lockAction));
        getPdfObject().put(PdfName.Fields, pdfArray);
        return this;
    }

    public static PdfName getLockActionValue(LockAction lockAction) {
        int i = C34601.$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction[lockAction.ordinal()];
        if (i == 1) {
            return PdfName.All;
        }
        if (i == 2) {
            return PdfName.Include;
        }
        if (i == 3) {
            return PdfName.Exclude;
        }
        return PdfName.All;
    }

    /* JADX INFO: renamed from: com.itextpdf.forms.PdfSigFieldLock$1 */
    static /* synthetic */ class C34601 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction;
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions;

        static {
            int[] iArr = new int[LockPermissions.values().length];
            $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions = iArr;
            try {
                iArr[LockPermissions.NO_CHANGES_ALLOWED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions[LockPermissions.FORM_FILLING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions[LockPermissions.FORM_FILLING_AND_ANNOTATION.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            int[] iArr2 = new int[LockAction.values().length];
            $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction = iArr2;
            try {
                iArr2[LockAction.ALL.ordinal()] = 1;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction[LockAction.INCLUDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                $SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockAction[LockAction.EXCLUDE.ordinal()] = 3;
            } catch (NoSuchFieldError unused6) {
            }
        }
    }

    public static PdfNumber getLockPermission(LockPermissions lockPermissions) {
        int i = C34601.$SwitchMap$com$itextpdf$forms$PdfSigFieldLock$LockPermissions[lockPermissions.ordinal()];
        if (i == 1) {
            return new PdfNumber(1);
        }
        if (i == 2) {
            return new PdfNumber(2);
        }
        if (i == 3) {
            return new PdfNumber(3);
        }
        return new PdfNumber(0);
    }
}
