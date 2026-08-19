package com.itextpdf.layout.borders;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.layout.borders.Border;

/* JADX INFO: loaded from: classes6.dex */
public class SolidBorder extends Border {
    @Override // com.itextpdf.layout.borders.Border
    public int getType() {
        return 0;
    }

    public SolidBorder(float f) {
        super(f);
    }

    public SolidBorder(Color color, float f) {
        super(color, f);
    }

    public SolidBorder(Color color, float f, float f2) {
        super(color, f, f2);
    }

    /* JADX INFO: renamed from: com.itextpdf.layout.borders.SolidBorder$1 */
    static /* synthetic */ class C35041 {
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
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side, float f5, float f6) {
        float f7;
        float f8;
        float f9;
        float f10;
        float f11;
        float f12;
        int i = C35041.$SwitchMap$com$itextpdf$layout$borders$Border$Side[getBorderSide(f, f2, f3, f4, side).ordinal()];
        if (i != 1) {
            if (i == 2) {
                f7 = this.width + f3;
                f8 = f4 - f6;
                f11 = this.width + f;
                f12 = f5 + f2;
            } else if (i == 3) {
                f7 = f3 - f6;
                f8 = f4 - this.width;
                f9 = f5 + f;
                f10 = f2 - this.width;
            } else if (i != 4) {
                f7 = 0.0f;
                f9 = 0.0f;
                f8 = 0.0f;
                f10 = 0.0f;
            } else {
                f7 = f3 - this.width;
                f8 = f6 + f4;
                f11 = f - this.width;
                f12 = f2 - f5;
            }
            float f13 = f11;
            f10 = f12;
            f9 = f13;
        } else {
            f7 = f3 + f6;
            f8 = this.width + f4;
            f9 = f - f5;
            f10 = this.width + f2;
        }
        pdfCanvas.saveState().setFillColor(this.transparentColor.getColor());
        this.transparentColor.applyFillTransparency(pdfCanvas);
        double d = f;
        double d2 = f2;
        pdfCanvas.moveTo(d, d2).lineTo(f3, f4).lineTo(f7, f8).lineTo(f9, f10).lineTo(d, d2).fill().restoreState();
    }

    @Override // com.itextpdf.layout.borders.Border
    public void draw(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, float f5, float f6, float f7, float f8, Border.Side side, float f9, float f10) {
        float f11;
        float f12;
        float f13;
        float f14;
        float f15;
        float f16;
        float x;
        float y;
        float f17;
        float f18;
        float f19;
        float f20;
        float f21;
        float f22;
        float f23;
        float f24;
        float f25;
        float x2;
        float f26;
        float f27;
        float f28;
        float f29;
        float f30;
        float f31;
        float f32;
        float f33;
        float f34;
        float f35;
        float f36;
        float f37;
        float f38;
        float y2;
        float f39;
        SolidBorder solidBorder = this;
        float x3 = f;
        float y3 = f2;
        int i = C35041.$SwitchMap$com$itextpdf$layout$borders$Border$Side[getBorderSide(f, f2, f3, f4, side).ordinal()];
        if (i == 1) {
            float f40 = f3 + f10;
            float f41 = solidBorder.width + f4;
            float f42 = x3 - f9;
            f11 = solidBorder.width + y3;
            float fMax = Math.max(0.0f, f5 - f9);
            float fMax2 = Math.max(0.0f, f6 - solidBorder.width);
            float fMax3 = Math.max(0.0f, f8 - solidBorder.width);
            float fMax4 = Math.max(0.0f, f7 - f10);
            if (fMax > fMax2) {
                f12 = f41;
                double d = f42;
                float f43 = y3 - fMax2;
                f13 = fMax3;
                double d2 = f43;
                float x4 = (float) solidBorder.getIntersectionPoint(new Point(x3, y3), new Point(d, f11), new Point(d, d2), new Point(fMax + x3, d2)).getX();
                y3 = f43;
                f14 = f40;
                f15 = fMax4;
                f16 = x4;
            } else {
                f12 = f41;
                f13 = fMax3;
                if (0.0f == fMax || 0.0f == fMax2) {
                    f14 = f40;
                    f15 = fMax4;
                    f16 = x3;
                } else {
                    double d3 = y3;
                    f14 = f40;
                    f15 = fMax4;
                    f16 = x3 + fMax;
                    double d4 = f16;
                    y3 = (float) solidBorder.getIntersectionPoint(new Point(x3, d3), new Point(f42, f11), new Point(d4, d3), new Point(d4, y3 - fMax2)).getY();
                }
            }
            if (f15 > f13) {
                double d5 = f3;
                f17 = f14;
                f18 = f42;
                f19 = f12;
                y = f4 - f13;
                double d6 = y;
                x3 = f16;
                x = (float) solidBorder.getIntersectionPoint(new Point(d5, f4), new Point(f17, f19), new Point(d5, d6), new Point(f3 - f15, d6)).getX();
            } else {
                x = f3;
                y = f4;
                f17 = f14;
                float f44 = f16;
                f18 = f42;
                f19 = f12;
                if (0.0f == f15 || 0.0f == f13) {
                    x3 = f44;
                    f20 = f18;
                    f11 = f11;
                    f21 = f17;
                } else {
                    double d7 = y;
                    x -= f15;
                    double d8 = x;
                    x3 = f44;
                    y = (float) solidBorder.getIntersectionPoint(new Point(x, d7), new Point(f17, f19), new Point(d8, d7), new Point(d8, y - f13)).getY();
                    f11 = f11;
                }
            }
            f21 = f17;
            f20 = f18;
        } else if (i == 2) {
            float f45 = solidBorder.width + f3;
            float f46 = f4 - f10;
            float f47 = solidBorder.width + x3;
            f11 = y3 + f9;
            float fMax5 = Math.max(0.0f, f6 - f9);
            float fMax6 = Math.max(0.0f, f5 - solidBorder.width);
            float fMax7 = Math.max(0.0f, f7 - solidBorder.width);
            float fMax8 = Math.max(0.0f, f8 - f10);
            if (fMax6 > fMax5) {
                double d9 = x3;
                f22 = f46;
                f23 = fMax7;
                f24 = fMax8;
                float f48 = y3 - fMax5;
                double d10 = f48;
                y3 = f48;
                f25 = f45;
                x2 = (float) solidBorder.getIntersectionPoint(new Point(d9, y3), new Point(f47, f11), new Point(d9, d10), new Point(x3 - fMax6, d10)).getX();
            } else {
                f22 = f46;
                f23 = fMax7;
                f24 = fMax8;
                if (0.0f == fMax5 || 0.0f == fMax6) {
                    f25 = f45;
                    x2 = x3;
                } else {
                    double d11 = y3;
                    f25 = f45;
                    x2 = x3 - fMax6;
                    double d12 = x2;
                    y3 = (float) solidBorder.getIntersectionPoint(new Point(x3, d11), new Point(f47, f11), new Point(d12, d11), new Point(d12, y3 - fMax5)).getY();
                }
            }
            if (f24 > f23) {
                double d13 = f4;
                f26 = f25;
                f27 = x2;
                f18 = f47;
                f19 = f22;
                x = f3 - f23;
                double d14 = x;
                y = (float) solidBorder.getIntersectionPoint(new Point(f3, d13), new Point(f26, f19), new Point(d14, d13), new Point(d14, f4 + f24)).getY();
            } else {
                x = f3;
                y = f4;
                f26 = f25;
                f27 = x2;
                f18 = f47;
                f19 = f22;
                if (0.0f == f24 || 0.0f == f23) {
                    f20 = f18;
                    f21 = f26;
                    x3 = f27;
                } else {
                    double d15 = x;
                    float f49 = y + f24;
                    double d16 = f49;
                    float x5 = (float) solidBorder.getIntersectionPoint(new Point(d15, y), new Point(f26, f19), new Point(d15, d16), new Point(x - f23, d16)).getX();
                    y = f49;
                    x = x5;
                }
            }
            f21 = f26;
            x3 = f27;
            f20 = f18;
        } else if (i == 3) {
            float f50 = f3 - f10;
            float f51 = f4 - solidBorder.width;
            float f52 = x3 + f9;
            float f53 = y3 - solidBorder.width;
            float fMax9 = Math.max(0.0f, f5 - f9);
            float fMax10 = Math.max(0.0f, f6 - solidBorder.width);
            float fMax11 = Math.max(0.0f, f8 - solidBorder.width);
            float fMax12 = Math.max(0.0f, f7 - f10);
            if (fMax10 > fMax9) {
                f28 = f50;
                f30 = fMax11;
                f31 = fMax12;
                double d17 = y3;
                f29 = f51;
                float f54 = x3 - fMax9;
                double d18 = f54;
                solidBorder = this;
                y3 = (float) solidBorder.getIntersectionPoint(new Point(x3, d17), new Point(f52, f53), new Point(d18, d17), new Point(d18, y3 + fMax10)).getY();
                x3 = f54;
            } else {
                f28 = f50;
                f29 = f51;
                f30 = fMax11;
                f31 = fMax12;
                if (0.0f != fMax9 && 0.0f != fMax10) {
                    double d19 = x3;
                    y3 += fMax10;
                    double d20 = y3;
                    x3 = (float) solidBorder.getIntersectionPoint(new Point(d19, y3), new Point(f52, f53), new Point(d19, d20), new Point(x3 - fMax9, d20)).getX();
                }
            }
            if (f31 > f30) {
                double d21 = f3;
                f32 = f28;
                f18 = f52;
                f33 = f53;
                f19 = f29;
                y = f4 + f30;
                double d22 = y;
                x = (float) solidBorder.getIntersectionPoint(new Point(d21, f4), new Point(f32, f19), new Point(d21, d22), new Point(f3 + f31, d22)).getX();
            } else {
                x = f3;
                y = f4;
                f18 = f52;
                f32 = f28;
                f19 = f29;
                f33 = f53;
                if (0.0f == f31 || 0.0f == f30) {
                    f20 = f18;
                    f21 = f32;
                    f11 = f33;
                } else {
                    double d23 = y;
                    x += f31;
                    double d24 = x;
                    y = (float) solidBorder.getIntersectionPoint(new Point(x, d23), new Point(f32, f19), new Point(d24, d23), new Point(d24, y + f30)).getY();
                }
            }
            f21 = f32;
            f11 = f33;
            f20 = f18;
        } else if (i != 4) {
            f20 = 0.0f;
            f21 = 0.0f;
            f11 = 0.0f;
            f19 = 0.0f;
            x = f3;
            y = f4;
        } else {
            float f55 = f3 - solidBorder.width;
            float f56 = f4 + f10;
            float f57 = x3 - solidBorder.width;
            float f58 = y3 - f9;
            float fMax13 = Math.max(0.0f, f6 - f9);
            float fMax14 = Math.max(0.0f, f5 - solidBorder.width);
            float fMax15 = Math.max(0.0f, f7 - solidBorder.width);
            float fMax16 = Math.max(0.0f, f8 - f10);
            if (fMax14 > fMax13) {
                f38 = f57;
                double d25 = x3;
                f34 = f55;
                f35 = f56;
                f36 = fMax15;
                f37 = fMax16;
                y2 = fMax13 + y3;
                double d26 = y2;
                x3 = (float) solidBorder.getIntersectionPoint(new Point(d25, y3), new Point(f38, f58), new Point(d25, d26), new Point(x3 + fMax14, d26)).getX();
            } else {
                f34 = f55;
                f35 = f56;
                f36 = fMax15;
                f37 = fMax16;
                if (0.0f == fMax13 || 0.0f == fMax14) {
                    f38 = f57;
                    y2 = y3;
                } else {
                    double d27 = y3;
                    f38 = f57;
                    float f59 = x3 + fMax14;
                    double d28 = f59;
                    y2 = (float) solidBorder.getIntersectionPoint(new Point(x3, d27), new Point(f57, f58), new Point(d28, d27), new Point(d28, fMax13 + y3)).getY();
                    x3 = f59;
                }
            }
            if (f37 > f36) {
                double d29 = f4;
                f21 = f34;
                f39 = y2;
                float f60 = f35;
                x = f3 + f36;
                double d30 = x;
                f11 = f58;
                y = (float) solidBorder.getIntersectionPoint(new Point(f3, d29), new Point(f21, f60), new Point(d30, d29), new Point(d30, f4 - f37)).getY();
                f19 = f60;
            } else {
                x = f3;
                float f61 = f4;
                f39 = y2;
                f21 = f34;
                float f62 = f35;
                if (0.0f == f37 || 0.0f == f36) {
                    f11 = f58;
                } else {
                    double d31 = x;
                    f61 -= f37;
                    double d32 = f61;
                    f11 = f58;
                    x = (float) solidBorder.getIntersectionPoint(new Point(d31, f61), new Point(f21, f62), new Point(d31, d32), new Point(x + f36, d32)).getX();
                }
                f19 = f62;
                y = f61;
            }
            f20 = f38;
            y3 = f39;
        }
        pdfCanvas.saveState().setFillColor(solidBorder.transparentColor.getColor());
        solidBorder.transparentColor.applyFillTransparency(pdfCanvas);
        double d33 = x3;
        double d34 = y3;
        pdfCanvas.moveTo(d33, d34).lineTo(x, y).lineTo(f21, f19).lineTo(f20, f11).lineTo(d33, d34).fill().restoreState();
    }

    @Override // com.itextpdf.layout.borders.Border
    public void drawCellBorder(PdfCanvas pdfCanvas, float f, float f2, float f3, float f4, Border.Side side) {
        pdfCanvas.saveState().setStrokeColor(this.transparentColor.getColor());
        this.transparentColor.applyStrokeTransparency(pdfCanvas);
        pdfCanvas.setLineWidth(this.width).moveTo(f, f2).lineTo(f3, f4).stroke().restoreState();
    }
}
