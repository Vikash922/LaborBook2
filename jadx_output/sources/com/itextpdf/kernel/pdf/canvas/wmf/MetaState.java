package com.itextpdf.kernel.pdf.canvas.wmf;

import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.colors.ColorConstants;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import java.util.ArrayList;
import java.util.List;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
public class MetaState {
    public static final int ALTERNATE = 1;
    public static final int OPAQUE = 2;
    public static final int TA_BASELINE = 24;
    public static final int TA_BOTTOM = 8;
    public static final int TA_CENTER = 6;
    public static final int TA_LEFT = 0;
    public static final int TA_NOUPDATECP = 0;
    public static final int TA_RIGHT = 2;
    public static final int TA_TOP = 0;
    public static final int TA_UPDATECP = 1;
    public static final int TRANSPARENT = 1;
    public static final int WINDING = 2;
    public List<MetaObject> MetaObjects;
    public int backgroundMode;
    public Color currentBackgroundColor;
    public MetaBrush currentBrush;
    public MetaFont currentFont;
    public MetaPen currentPen;
    public Point currentPoint;
    public Color currentTextColor;
    public int extentWx;
    public int extentWy;
    public int lineJoin;
    public int offsetWx;
    public int offsetWy;
    public int polyFillMode;
    public Stack<MetaState> savedStates;
    public float scalingX;
    public float scalingY;
    public int textAlign;

    public MetaState() {
        this.currentBackgroundColor = ColorConstants.WHITE;
        this.currentTextColor = ColorConstants.BLACK;
        this.backgroundMode = 2;
        this.polyFillMode = 1;
        this.lineJoin = 1;
        this.savedStates = new Stack<>();
        this.MetaObjects = new ArrayList();
        this.currentPoint = new Point(0, 0);
        this.currentPen = new MetaPen();
        this.currentBrush = new MetaBrush();
        this.currentFont = new MetaFont();
    }

    public MetaState(MetaState metaState) {
        this.currentBackgroundColor = ColorConstants.WHITE;
        this.currentTextColor = ColorConstants.BLACK;
        this.backgroundMode = 2;
        this.polyFillMode = 1;
        this.lineJoin = 1;
        setMetaState(metaState);
    }

    public void setMetaState(MetaState metaState) {
        this.savedStates = metaState.savedStates;
        this.MetaObjects = metaState.MetaObjects;
        this.currentPoint = metaState.currentPoint;
        this.currentPen = metaState.currentPen;
        this.currentBrush = metaState.currentBrush;
        this.currentFont = metaState.currentFont;
        this.currentBackgroundColor = metaState.currentBackgroundColor;
        this.currentTextColor = metaState.currentTextColor;
        this.backgroundMode = metaState.backgroundMode;
        this.polyFillMode = metaState.polyFillMode;
        this.textAlign = metaState.textAlign;
        this.lineJoin = metaState.lineJoin;
        this.offsetWx = metaState.offsetWx;
        this.offsetWy = metaState.offsetWy;
        this.extentWx = metaState.extentWx;
        this.extentWy = metaState.extentWy;
        this.scalingX = metaState.scalingX;
        this.scalingY = metaState.scalingY;
    }

    public void addMetaObject(MetaObject metaObject) {
        for (int i = 0; i < this.MetaObjects.size(); i++) {
            if (this.MetaObjects.get(i) == null) {
                this.MetaObjects.set(i, metaObject);
                return;
            }
        }
        this.MetaObjects.add(metaObject);
    }

    public void selectMetaObject(int i, PdfCanvas pdfCanvas) {
        MetaObject metaObject = this.MetaObjects.get(i);
        if (metaObject == null) {
            return;
        }
        int type = metaObject.getType();
        if (type != 1) {
            if (type != 2) {
                if (type != 3) {
                    return;
                }
                this.currentFont = (MetaFont) metaObject;
                return;
            }
            MetaBrush metaBrush = (MetaBrush) metaObject;
            this.currentBrush = metaBrush;
            int style = metaBrush.getStyle();
            if (style == 0) {
                pdfCanvas.setFillColor(this.currentBrush.getColor());
                return;
            } else {
                if (style == 2) {
                    pdfCanvas.setFillColor(this.currentBackgroundColor);
                    return;
                }
                return;
            }
        }
        MetaPen metaPen = (MetaPen) metaObject;
        this.currentPen = metaPen;
        int style2 = metaPen.getStyle();
        if (style2 != 5) {
            pdfCanvas.setStrokeColor(this.currentPen.getColor());
            pdfCanvas.setLineWidth(Math.abs((this.currentPen.getPenWidth() * this.scalingX) / this.extentWx));
            if (style2 == 1) {
                pdfCanvas.setLineDash(18.0f, 6.0f, 0.0f);
                return;
            }
            if (style2 == 2) {
                pdfCanvas.setLineDash(3.0f, 0.0f);
                return;
            }
            if (style2 == 3) {
                pdfCanvas.writeLiteral("[9 6 3 6]0 d\n");
            } else if (style2 == 4) {
                pdfCanvas.writeLiteral("[9 3 3 3 3 3]0 d\n");
            } else {
                pdfCanvas.setLineDash(0.0f);
            }
        }
    }

    public void deleteMetaObject(int i) {
        this.MetaObjects.set(i, null);
    }

    public void saveState(PdfCanvas pdfCanvas) {
        pdfCanvas.saveState();
        this.savedStates.push(new MetaState(this));
    }

    public void restoreState(int i, PdfCanvas pdfCanvas) {
        int iMax;
        if (i < 0) {
            iMax = Math.min(-i, this.savedStates.size());
        } else {
            iMax = Math.max(this.savedStates.size() - i, 0);
        }
        if (iMax == 0) {
            return;
        }
        MetaState metaStatePop = null;
        while (true) {
            int i2 = iMax - 1;
            if (iMax != 0) {
                pdfCanvas.restoreState();
                metaStatePop = this.savedStates.pop();
                iMax = i2;
            } else {
                setMetaState(metaStatePop);
                return;
            }
        }
    }

    public void cleanup(PdfCanvas pdfCanvas) {
        int size = this.savedStates.size();
        while (true) {
            int i = size - 1;
            if (size <= 0) {
                return;
            }
            pdfCanvas.restoreState();
            size = i;
        }
    }

    public float transformX(int i) {
        return ((i - this.offsetWx) * this.scalingX) / this.extentWx;
    }

    public float transformY(int i) {
        return (1.0f - ((i - this.offsetWy) / this.extentWy)) * this.scalingY;
    }

    public void setScalingX(float f) {
        this.scalingX = f;
    }

    public void setScalingY(float f) {
        this.scalingY = f;
    }

    public void setOffsetWx(int i) {
        this.offsetWx = i;
    }

    public void setOffsetWy(int i) {
        this.offsetWy = i;
    }

    public void setExtentWx(int i) {
        this.extentWx = i;
    }

    public void setExtentWy(int i) {
        this.extentWy = i;
    }

    public float transformAngle(float f) {
        if (this.scalingY < 0.0f) {
            f = -f;
        }
        return (float) (this.scalingX < 0.0f ? 3.141592653589793d - ((double) f) : f);
    }

    public void setCurrentPoint(Point point) {
        this.currentPoint = point;
    }

    public Point getCurrentPoint() {
        return this.currentPoint;
    }

    public MetaBrush getCurrentBrush() {
        return this.currentBrush;
    }

    public MetaPen getCurrentPen() {
        return this.currentPen;
    }

    public MetaFont getCurrentFont() {
        return this.currentFont;
    }

    public Color getCurrentBackgroundColor() {
        return this.currentBackgroundColor;
    }

    public void setCurrentBackgroundColor(Color color) {
        this.currentBackgroundColor = color;
    }

    public Color getCurrentTextColor() {
        return this.currentTextColor;
    }

    public void setCurrentTextColor(Color color) {
        this.currentTextColor = color;
    }

    public int getBackgroundMode() {
        return this.backgroundMode;
    }

    public void setBackgroundMode(int i) {
        this.backgroundMode = i;
    }

    public int getTextAlign() {
        return this.textAlign;
    }

    public void setTextAlign(int i) {
        this.textAlign = i;
    }

    public int getPolyFillMode() {
        return this.polyFillMode;
    }

    public void setPolyFillMode(int i) {
        this.polyFillMode = i;
    }

    public void setLineJoinRectangle(PdfCanvas pdfCanvas) {
        if (this.lineJoin != 0) {
            this.lineJoin = 0;
            pdfCanvas.setLineJoinStyle(0);
        }
    }

    public void setLineJoinPolygon(PdfCanvas pdfCanvas) {
        if (this.lineJoin == 0) {
            this.lineJoin = 1;
            pdfCanvas.setLineJoinStyle(1);
        }
    }

    public boolean getLineNeutral() {
        return this.lineJoin == 0;
    }
}
