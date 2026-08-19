package com.itextpdf.layout.borders;

import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
public class RidgeBorder extends Border3D {
    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 8;
    }

    public RidgeBorder(float f) {
        super(f);
    }

    public RidgeBorder(DeviceRgb deviceRgb, float f) {
        super(deviceRgb, f);
    }

    public RidgeBorder(DeviceCmyk deviceCmyk, float f) {
        super(deviceCmyk, f);
    }

    public RidgeBorder(DeviceGray deviceGray, float f) {
        super(deviceGray, f);
    }

    public RidgeBorder(DeviceRgb deviceRgb, float f, float f2) {
        super(deviceRgb, f, f2);
    }

    public RidgeBorder(DeviceCmyk deviceCmyk, float f, float f2) {
        super(deviceCmyk, f, f2);
    }

    public RidgeBorder(DeviceGray deviceGray, float f, float f2) {
        super(deviceGray, f, f2);
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.borders.RidgeBorder$1 */
    static /* synthetic */ class C35031 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$borders$Border$Side;

        static {
            int[] iArr = new int[Border.Side.values().length];
            $SwitchMap$com$itextpdf$layout$borders$Border$Side = iArr;
            try {
                iArr[Border.Side.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Border.Side.LEFT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Border.Side.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Border.Side.RIGHT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.itextpdf.layout.borders.Border3D
    protected void setInnerHalfColor(PdfCanvas pdfCanvas, Border.Side side) {
        int i = C35031.$SwitchMap$com$itextpdf$layout$borders$Border$Side[side.ordinal()];
        if (i == 1 || i == 2) {
            pdfCanvas.setFillColor(getDarkerColor());
        } else if (i == 3 || i == 4) {
            pdfCanvas.setFillColor(getColor());
        }
    }

    @Override // com.itextpdf.layout.borders.Border3D
    protected void setOuterHalfColor(PdfCanvas pdfCanvas, Border.Side side) {
        int i = C35031.$SwitchMap$com$itextpdf$layout$borders$Border$Side[side.ordinal()];
        if (i == 1 || i == 2) {
            pdfCanvas.setFillColor(getColor());
        } else if (i == 3 || i == 4) {
            pdfCanvas.setFillColor(getDarkerColor());
        }
    }
}
