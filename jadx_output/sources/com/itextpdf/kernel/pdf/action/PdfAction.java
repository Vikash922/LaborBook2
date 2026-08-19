package com.itextpdf.kernel.pdf.action;

import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.pdf.PdfArray;
import com.itextpdf.kernel.pdf.PdfBoolean;
import com.itextpdf.kernel.pdf.PdfDictionary;
import com.itextpdf.kernel.pdf.PdfName;
import com.itextpdf.kernel.pdf.PdfNumber;
import com.itextpdf.kernel.pdf.PdfObject;
import com.itextpdf.kernel.pdf.PdfObjectWrapper;
import com.itextpdf.kernel.pdf.PdfStream;
import com.itextpdf.kernel.pdf.PdfString;
import com.itextpdf.kernel.pdf.annot.PdfAnnotation;
import com.itextpdf.kernel.pdf.filespec.PdfFileSpec;
import com.itextpdf.kernel.pdf.filespec.PdfStringFS;
import com.itextpdf.kernel.pdf.navigation.PdfDestination;
import com.itextpdf.kernel.pdf.navigation.PdfExplicitDestination;
import com.itextpdf.kernel.pdf.navigation.PdfExplicitRemoteGoToDestination;
import com.itextpdf.kernel.pdf.navigation.PdfStringDestination;
import com.itextpdf.kernel.pdf.navigation.PdfStructureDestination;
import com.itextpdf.p017io.logs.IoLogMessageConstant;
import java.util.Iterator;
import java.util.List;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class PdfAction extends PdfObjectWrapper<PdfDictionary> {
    public static final int RESET_EXCLUDE = 1;
    public static final int SUBMIT_CANONICAL_FORMAT = 512;
    public static final int SUBMIT_COORDINATES = 16;
    public static final int SUBMIT_EMBED_FORM = 8196;
    public static final int SUBMIT_EXCLUDE = 1;
    public static final int SUBMIT_EXCL_F_KEY = 2048;
    public static final int SUBMIT_EXCL_NON_USER_ANNOTS = 1024;
    public static final int SUBMIT_HTML_FORMAT = 4;
    public static final int SUBMIT_HTML_GET = 8;
    public static final int SUBMIT_INCLUDE_ANNOTATIONS = 128;
    public static final int SUBMIT_INCLUDE_APPEND_SAVES = 64;
    public static final int SUBMIT_INCLUDE_NO_VALUE_FIELDS = 2;
    public static final int SUBMIT_PDF = 256;
    public static final int SUBMIT_XFDF = 32;

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    protected boolean isWrappedObjectMustBeIndirect() {
        return true;
    }

    public PdfAction() {
        this(new PdfDictionary());
        put(PdfName.Type, PdfName.Action);
    }

    public PdfAction(PdfDictionary pdfDictionary) {
        super(pdfDictionary);
        markObjectAsIndirect(getPdfObject());
    }

    public static PdfAction createGoTo(PdfDestination pdfDestination) {
        validateNotRemoteDestination(pdfDestination);
        return new PdfAction().put(PdfName.f3065S, PdfName.GoTo).put(PdfName.f2992D, pdfDestination.getPdfObject());
    }

    public static PdfAction createGoTo(String str) {
        return createGoTo(new PdfStringDestination(str));
    }

    public static PdfAction createGoToR(PdfFileSpec pdfFileSpec, PdfDestination pdfDestination, boolean z) {
        return createGoToR(pdfFileSpec, pdfDestination).put(PdfName.NewWindow, PdfBoolean.valueOf(z));
    }

    public static PdfAction createGoToR(PdfFileSpec pdfFileSpec, PdfDestination pdfDestination) {
        validateRemoteDestination(pdfDestination);
        return new PdfAction().put(PdfName.f3065S, PdfName.GoToR).put(PdfName.f3004F, pdfFileSpec.getPdfObject()).put(PdfName.f2992D, pdfDestination.getPdfObject());
    }

    public static PdfAction createGoToR(String str, int i) {
        return createGoToR(str, i, false);
    }

    public static PdfAction createGoToR(String str, int i, boolean z) {
        return createGoToR(new PdfStringFS(str), PdfExplicitRemoteGoToDestination.createFitH(i, 10000.0f), z);
    }

    public static PdfAction createGoToR(String str, String str2, boolean z) {
        return createGoToR(new PdfStringFS(str), new PdfStringDestination(str2), z);
    }

    public static PdfAction createGoToR(String str, String str2) {
        return createGoToR(str, str2, false);
    }

    public static PdfAction createGoToE(PdfDestination pdfDestination, boolean z, PdfTarget pdfTarget) {
        return createGoToE(null, pdfDestination, z, pdfTarget);
    }

    public static PdfAction createGoToE(PdfFileSpec pdfFileSpec, PdfDestination pdfDestination, boolean z, PdfTarget pdfTarget) {
        PdfAction pdfActionPut = new PdfAction().put(PdfName.f3065S, PdfName.GoToE).put(PdfName.NewWindow, PdfBoolean.valueOf(z));
        if (pdfFileSpec != null) {
            pdfActionPut.put(PdfName.f3004F, pdfFileSpec.getPdfObject());
        }
        if (pdfDestination != null) {
            validateRemoteDestination(pdfDestination);
            pdfActionPut.put(PdfName.f2992D, pdfDestination.getPdfObject());
        } else {
            LoggerFactory.getLogger((Class<?>) PdfAction.class).warn(IoLogMessageConstant.EMBEDDED_GO_TO_DESTINATION_NOT_SPECIFIED);
        }
        if (pdfTarget != null) {
            pdfActionPut.put(PdfName.f3071T, pdfTarget.getPdfObject());
        }
        return pdfActionPut;
    }

    public static PdfAction createLaunch(PdfFileSpec pdfFileSpec, boolean z) {
        return createLaunch(pdfFileSpec).put(PdfName.NewWindow, new PdfBoolean(z));
    }

    public static PdfAction createLaunch(PdfFileSpec pdfFileSpec) {
        PdfAction pdfActionPut = new PdfAction().put(PdfName.f3065S, PdfName.Launch);
        if (pdfFileSpec != null) {
            pdfActionPut.put(PdfName.f3004F, pdfFileSpec.getPdfObject());
        }
        return pdfActionPut;
    }

    public static PdfAction createThread(PdfFileSpec pdfFileSpec, PdfObject pdfObject, PdfObject pdfObject2) {
        PdfAction pdfActionPut = new PdfAction().put(PdfName.f3065S, PdfName.Launch).put(PdfName.f2992D, pdfObject).put(PdfName.f2973B, pdfObject2);
        if (pdfFileSpec != null) {
            pdfActionPut.put(PdfName.f3004F, pdfFileSpec.getPdfObject());
        }
        return pdfActionPut;
    }

    public static PdfAction createThread(PdfFileSpec pdfFileSpec) {
        return createThread(pdfFileSpec, null, null);
    }

    public static PdfAction createURI(String str) {
        return createURI(str, false);
    }

    public static PdfAction createURI(String str, boolean z) {
        return new PdfAction().put(PdfName.f3065S, PdfName.URI).put(PdfName.URI, new PdfString(str)).put(PdfName.IsMap, PdfBoolean.valueOf(z));
    }

    public static PdfAction createSound(PdfStream pdfStream) {
        return new PdfAction().put(PdfName.f3065S, PdfName.Sound).put(PdfName.Sound, pdfStream);
    }

    public static PdfAction createSound(PdfStream pdfStream, float f, boolean z, boolean z2, boolean z3) {
        if (f < -1.0f || f > 1.0f) {
            throw new IllegalArgumentException("volume");
        }
        return new PdfAction().put(PdfName.f3065S, PdfName.Sound).put(PdfName.Sound, pdfStream).put(PdfName.Volume, new PdfNumber(f)).put(PdfName.Synchronous, PdfBoolean.valueOf(z)).put(PdfName.Repeat, PdfBoolean.valueOf(z2)).put(PdfName.Mix, PdfBoolean.valueOf(z3));
    }

    public static PdfAction createMovie(PdfAnnotation pdfAnnotation, String str, PdfName pdfName) {
        PdfAction pdfActionPut = new PdfAction().put(PdfName.f3065S, PdfName.Movie).put(PdfName.f3071T, new PdfString(str)).put(PdfName.Operation, pdfName);
        if (pdfAnnotation != null) {
            pdfActionPut.put(PdfName.Annotation, pdfAnnotation.getPdfObject());
        }
        return pdfActionPut;
    }

    public static PdfAction createHide(PdfAnnotation pdfAnnotation, boolean z) {
        return new PdfAction().put(PdfName.f3065S, PdfName.Hide).put(PdfName.f3071T, pdfAnnotation.getPdfObject()).put(PdfName.f3011H, PdfBoolean.valueOf(z));
    }

    public static PdfAction createHide(PdfAnnotation[] pdfAnnotationArr, boolean z) {
        return new PdfAction().put(PdfName.f3065S, PdfName.Hide).put(PdfName.f3071T, getPdfArrayFromAnnotationsList(pdfAnnotationArr)).put(PdfName.f3011H, PdfBoolean.valueOf(z));
    }

    public static PdfAction createHide(String str, boolean z) {
        return new PdfAction().put(PdfName.f3065S, PdfName.Hide).put(PdfName.f3071T, new PdfString(str)).put(PdfName.f3011H, PdfBoolean.valueOf(z));
    }

    public static PdfAction createHide(String[] strArr, boolean z) {
        return new PdfAction().put(PdfName.f3065S, PdfName.Hide).put(PdfName.f3071T, getArrayFromStringList(strArr)).put(PdfName.f3011H, PdfBoolean.valueOf(z));
    }

    public static PdfAction createNamed(PdfName pdfName) {
        return new PdfAction().put(PdfName.f3065S, PdfName.Named).put(PdfName.f3037N, pdfName);
    }

    public static PdfAction createSetOcgState(List<PdfActionOcgState> list) {
        return createSetOcgState(list, false);
    }

    public static PdfAction createSetOcgState(List<PdfActionOcgState> list, boolean z) {
        PdfArray pdfArray = new PdfArray();
        Iterator<PdfActionOcgState> it = list.iterator();
        while (it.hasNext()) {
            pdfArray.addAll(it.next().getObjectList());
        }
        return new PdfAction().put(PdfName.f3065S, PdfName.SetOCGState).put(PdfName.State, pdfArray).put(PdfName.PreserveRB, PdfBoolean.valueOf(z));
    }

    public static PdfAction createRendition(String str, PdfFileSpec pdfFileSpec, String str2, PdfAnnotation pdfAnnotation) {
        return new PdfAction().put(PdfName.f3065S, PdfName.Rendition).put(PdfName.f3045OP, new PdfNumber(0)).put(PdfName.f2970AN, pdfAnnotation.getPdfObject()).put(PdfName.f3056R, new PdfRendition(str, pdfFileSpec, str2).getPdfObject());
    }

    public static PdfAction createJavaScript(String str) {
        return new PdfAction().put(PdfName.f3065S, PdfName.JavaScript).put(PdfName.f3023JS, new PdfString(str));
    }

    public static PdfAction createSubmitForm(String str, Object[] objArr, int i) {
        PdfAction pdfAction = new PdfAction();
        pdfAction.put(PdfName.f3065S, PdfName.SubmitForm);
        PdfDictionary pdfDictionary = new PdfDictionary();
        pdfDictionary.put(PdfName.f3004F, new PdfString(str));
        pdfDictionary.put(PdfName.f3006FS, PdfName.URL);
        pdfAction.put(PdfName.f3004F, pdfDictionary);
        if (objArr != null) {
            pdfAction.put(PdfName.Fields, buildArray(objArr));
        }
        pdfAction.put(PdfName.Flags, new PdfNumber(i));
        return pdfAction;
    }

    public static PdfAction createResetForm(Object[] objArr, int i) {
        PdfAction pdfAction = new PdfAction();
        pdfAction.put(PdfName.f3065S, PdfName.ResetForm);
        if (objArr != null) {
            pdfAction.put(PdfName.Fields, buildArray(objArr));
        }
        pdfAction.put(PdfName.Flags, new PdfNumber(i));
        return pdfAction;
    }

    public static void setAdditionalAction(PdfObjectWrapper<PdfDictionary> pdfObjectWrapper, PdfName pdfName, PdfAction pdfAction) {
        PdfDictionary pdfDictionary;
        PdfObject pdfObject = ((PdfDictionary) pdfObjectWrapper.getPdfObject()).get(PdfName.f2968AA);
        boolean z = pdfObject != null && pdfObject.isDictionary();
        if (z) {
            pdfDictionary = (PdfDictionary) pdfObject;
        } else {
            pdfDictionary = new PdfDictionary();
        }
        pdfDictionary.put(pdfName, pdfAction.getPdfObject());
        pdfDictionary.setModified();
        ((PdfDictionary) pdfObjectWrapper.getPdfObject()).put(PdfName.f2968AA, pdfDictionary);
        if (z && pdfDictionary.isIndirect()) {
            return;
        }
        ((PdfDictionary) pdfObjectWrapper.getPdfObject()).setModified();
    }

    public void next(PdfAction pdfAction) {
        PdfObject pdfObject = ((PdfDictionary) getPdfObject()).get(PdfName.Next);
        if (pdfObject == null) {
            put(PdfName.Next, pdfAction.getPdfObject());
        } else {
            if (pdfObject.isDictionary()) {
                PdfArray pdfArray = new PdfArray(pdfObject);
                pdfArray.add(pdfAction.getPdfObject());
                put(PdfName.Next, pdfArray);
                return;
            }
            ((PdfArray) pdfObject).add(pdfAction.getPdfObject());
        }
    }

    public PdfAction put(PdfName pdfName, PdfObject pdfObject) {
        getPdfObject().put(pdfName, pdfObject);
        setModified();
        return this;
    }

    @Override // com.itextpdf.kernel.pdf.PdfObjectWrapper
    public void flush() {
        super.flush();
    }

    private static PdfArray getPdfArrayFromAnnotationsList(PdfAnnotation[] pdfAnnotationArr) {
        PdfArray pdfArray = new PdfArray();
        for (PdfAnnotation pdfAnnotation : pdfAnnotationArr) {
            pdfArray.add(pdfAnnotation.getPdfObject());
        }
        return pdfArray;
    }

    private static PdfArray getArrayFromStringList(String[] strArr) {
        PdfArray pdfArray = new PdfArray();
        for (String str : strArr) {
            pdfArray.add(new PdfString(str));
        }
        return pdfArray;
    }

    private static PdfArray buildArray(Object[] objArr) {
        PdfArray pdfArray = new PdfArray();
        for (Object obj : objArr) {
            if (obj instanceof String) {
                pdfArray.add(new PdfString((String) obj));
            } else if (obj instanceof PdfAnnotation) {
                pdfArray.add(((PdfAnnotation) obj).getPdfObject());
            } else {
                throw new PdfException("The array must contain string or PDFAnnotation");
            }
        }
        return pdfArray;
    }

    private static void validateRemoteDestination(PdfDestination pdfDestination) {
        if (pdfDestination instanceof PdfExplicitDestination) {
            if (((PdfArray) pdfDestination.getPdfObject()).get(0).isDictionary()) {
                throw new IllegalArgumentException("Explicit destinations shall specify page number in remote go-to actions instead of page dictionary");
            }
            return;
        }
        if (pdfDestination instanceof PdfStructureDestination) {
            PdfObject pdfObject = ((PdfArray) pdfDestination.getPdfObject()).get(0);
            if (pdfObject.isDictionary()) {
                PdfString asString = ((PdfDictionary) pdfObject).getAsString(PdfName.f3021ID);
                if (asString == null) {
                    throw new IllegalArgumentException("Structure destinations shall specify structure element ID in remote go-to actions. Structure element that has no ID is specified instead");
                }
                LoggerFactory.getLogger((Class<?>) PdfAction.class).warn(IoLogMessageConstant.STRUCTURE_ELEMENT_REPLACED_BY_ITS_ID_IN_STRUCTURE_DESTINATION);
                ((PdfArray) pdfDestination.getPdfObject()).set(0, asString);
                pdfDestination.getPdfObject().setModified();
            }
        }
    }

    private static void validateNotRemoteDestination(PdfDestination pdfDestination) {
        if (pdfDestination instanceof PdfExplicitRemoteGoToDestination) {
            LoggerFactory.getLogger((Class<?>) PdfAction.class).warn(IoLogMessageConstant.INVALID_DESTINATION_TYPE);
        } else if ((pdfDestination instanceof PdfExplicitDestination) && ((PdfArray) pdfDestination.getPdfObject()).get(0).isNumber()) {
            LoggerFactory.getLogger((Class<?>) PdfAction.class).warn(IoLogMessageConstant.INVALID_DESTINATION_TYPE);
        }
    }
}
