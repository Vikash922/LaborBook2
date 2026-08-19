package com.itextpdf.layout.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
public class DoubleBorder extends Border {
    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 3;
    }

    public DoubleBorder(float f) {
        super(f);
    }

    public DoubleBorder(Color color, float f) {
        super(color, f);
    }

    public DoubleBorder(Color color, float f, float f2) {
        super(color, f, f2);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ef  */
    @Override // com.itextpdf.layout.borders.Border
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void draw(com.itextpdf.kernel.pdf.canvas.PdfCanvas r20, float r21, float r22, float r23, float r24, com.itextpdf.layout.borders.Border.Side r25, float r26, float r27) {
        /*
            Method dump skipped, instruction units count: 294
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.itextpdf.layout.borders.DoubleBorder.draw(com.itextpdf.kernel.pdf.canvas.PdfCanvas, float, float, float, float, com.itextpdf.layout.borders.Border$Side, float, float):void");
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.borders.DoubleBorder$1 */
    static /* synthetic */ class C34991 {
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
        float f5;
        float f6 = this.width / 3.0f;
        Border.Side borderSide = getBorderSide(f, f2, f3, f4, side);
        int i = C34991.$SwitchMap$com$itextpdf$layout$borders$Border$Side[borderSide.ordinal()];
        if (i == 1) {
            f2 -= f6;
            f4 = f2;
        } else if (i == 2) {
            f -= f6;
            f3 -= f6;
            f2 += f6;
            f4 -= f6;
        }
        pdfCanvas.saveState().setLineWidth(f6).setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.moveTo(f, f2).lineTo(f3, f4).stroke().restoreState();
        int i2 = C34991.$SwitchMap$com$itextpdf$layout$borders$Border$Side[borderSide.ordinal()];
        if (i2 == 1) {
            float f7 = 2.0f * f6;
            f4 += f7;
            f2 += f7;
        } else if (i2 != 2) {
            if (i2 == 3) {
                f5 = 2.0f * f6;
                f3 -= f5;
                f4 -= f5;
                f += f5;
            } else if (i2 == 4) {
                f5 = 2.0f * f6;
                f4 += f5;
                f -= f5;
            }
            f2 -= f5;
        } else {
            float f8 = 2.0f * f6;
            f3 += f8;
            f += f8;
        }
        pdfCanvas.saveState().setLineWidth(f6).setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.moveTo(f, f2).lineTo(f3, f4).stroke().restoreState();
    }
}
