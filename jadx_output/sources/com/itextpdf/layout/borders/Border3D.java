package com.itextpdf.layout.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.DeviceCmyk;
import com.itextpdf.kernel.colors.DeviceGray;
import com.itextpdf.kernel.colors.DeviceRgb;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Border3D extends Border {
    private static final DeviceRgb GRAY = new DeviceRgb(212, 208, 200);

    protected abstract void setInnerHalfColor(PdfCanvas pdfCanvas, Border.Side side);

    protected abstract void setOuterHalfColor(PdfCanvas pdfCanvas, Border.Side side);

    protected Border3D(float f) {
        this(GRAY, f);
    }

    protected Border3D(DeviceRgb deviceRgb, float f) {
        super(deviceRgb, f);
    }

    protected Border3D(DeviceCmyk deviceCmyk, float f) {
        super(deviceCmyk, f);
    }

    protected Border3D(DeviceGray deviceGray, float f) {
        super(deviceGray, f);
    }

    protected Border3D(DeviceRgb deviceRgb, float f, float f2) {
        super(deviceRgb, f, f2);
    }

    protected Border3D(DeviceCmyk deviceCmyk, float f, float f2) {
        super(deviceCmyk, f, f2);
    }

    protected Border3D(DeviceGray deviceGray, float f, float f2) {
        super(deviceGray, f, f2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0099  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00d3  */
    @Override // com.itextpdf.layout.borders.Border
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(com.itextpdf.kernel.pdf.canvas.PdfCanvas r20, float r21, float r22, float r23, float r24, com.itextpdf.layout.borders.Border.Side r25, float r26, float r27) {
        /*
            Method dump skipped, instruction units count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.borders.Border3D.draw(com.itextpdf.kernel.pdf.canvas.PdfCanvas, float, float, float, float, com.itextpdf.layout.borders.Border$Side, float, float):void");
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.borders.Border3D$1 */
    static /* synthetic */ class C34981 {
        static final /* synthetic */ int[] $SwitchMap$com$itextpdf$layout$borders$Border$Side;

        static {
            int[] iArr = new int[Border.Side.values().length];
            $SwitchMap$com$itextpdf$layout$borders$Border$Side = iArr;
            try {
                iArr[Border.Side.TOP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Border.Side.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Border.Side.BOTTOM.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$itextpdf$layout$borders$Border$Side[Border.Side.LEFT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        pdfCanvas.saveState().setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineWidth(this.width).moveTo(f, f2).lineTo(f3, f4).stroke().restoreState();
    }

    protected Color getDarkerColor() {
        Color color = this.transparentColor.getColor();
        if (color instanceof DeviceRgb) {
            return DeviceRgb.makeDarker((DeviceRgb) color);
        }
        if (color instanceof DeviceCmyk) {
            return DeviceCmyk.makeDarker((DeviceCmyk) color);
        }
        return color instanceof DeviceGray ? DeviceGray.makeDarker((DeviceGray) color) : color;
    }
}
