package com.itextpdf.kernel.pdf.canvas.wmf;

import com.google.android.material.internal.ViewUtils;
import com.google.firebase.perf.network.FirebasePerfUrlConnection;
import com.itextpdf.kernel.colors.Color;
import com.itextpdf.kernel.exceptions.KernelExceptionMessageConstant;
import com.itextpdf.kernel.exceptions.PdfException;
import com.itextpdf.kernel.font.PdfFontFactory;
import com.itextpdf.kernel.geom.Point;
import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.kernel.pdf.canvas.PdfCanvas;
import com.itextpdf.kernel.pdf.xobject.PdfImageXObject;
import com.itextpdf.p017io.font.FontProgram;
import com.itextpdf.p017io.image.ImageData;
import com.itextpdf.p017io.image.ImageDataFactory;
import com.itextpdf.p017io.image.ImageType;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class MetaDo {
    public static final int META_ANIMATEPALETTE = 1078;
    public static final int META_ARC = 2071;
    public static final int META_BITBLT = 2338;
    public static final int META_CHORD = 2096;
    public static final int META_CREATEBRUSHINDIRECT = 764;
    public static final int META_CREATEFONTINDIRECT = 763;
    public static final int META_CREATEPALETTE = 247;
    public static final int META_CREATEPATTERNBRUSH = 505;
    public static final int META_CREATEPENINDIRECT = 762;
    public static final int META_CREATEREGION = 1791;
    public static final int META_DELETEOBJECT = 496;
    public static final int META_DIBBITBLT = 2368;
    public static final int META_DIBCREATEPATTERNBRUSH = 322;
    public static final int META_DIBSTRETCHBLT = 2881;
    public static final int META_ELLIPSE = 1048;
    public static final int META_ESCAPE = 1574;
    public static final int META_EXCLUDECLIPRECT = 1045;
    public static final int META_EXTFLOODFILL = 1352;
    public static final int META_EXTTEXTOUT = 2610;
    public static final int META_FILLREGION = 552;
    public static final int META_FLOODFILL = 1049;
    public static final int META_FRAMEREGION = 1065;
    public static final int META_INTERSECTCLIPRECT = 1046;
    public static final int META_INVERTREGION = 298;
    public static final int META_LINETO = 531;
    public static final int META_MOVETO = 532;
    public static final int META_OFFSETCLIPRGN = 544;
    public static final int META_OFFSETVIEWPORTORG = 529;
    public static final int META_OFFSETWINDOWORG = 527;
    public static final int META_PAINTREGION = 299;
    public static final int META_PATBLT = 1565;
    public static final int META_PIE = 2074;
    public static final int META_POLYGON = 804;
    public static final int META_POLYLINE = 805;
    public static final int META_POLYPOLYGON = 1336;
    public static final int META_REALIZEPALETTE = 53;
    public static final int META_RECTANGLE = 1051;
    public static final int META_RESIZEPALETTE = 313;
    public static final int META_RESTOREDC = 295;
    public static final int META_ROUNDRECT = 1564;
    public static final int META_SAVEDC = 30;
    public static final int META_SCALEVIEWPORTEXT = 1042;
    public static final int META_SCALEWINDOWEXT = 1040;
    public static final int META_SELECTCLIPREGION = 300;
    public static final int META_SELECTOBJECT = 301;
    public static final int META_SELECTPALETTE = 564;
    public static final int META_SETBKCOLOR = 513;
    public static final int META_SETBKMODE = 258;
    public static final int META_SETDIBTODEV = 3379;
    public static final int META_SETMAPMODE = 259;
    public static final int META_SETMAPPERFLAGS = 561;
    public static final int META_SETPALENTRIES = 55;
    public static final int META_SETPIXEL = 1055;
    public static final int META_SETPOLYFILLMODE = 262;
    public static final int META_SETRELABS = 261;
    public static final int META_SETROP2 = 260;
    public static final int META_SETSTRETCHBLTMODE = 263;
    public static final int META_SETTEXTALIGN = 302;
    public static final int META_SETTEXTCHAREXTRA = 264;
    public static final int META_SETTEXTCOLOR = 521;
    public static final int META_SETTEXTJUSTIFICATION = 522;
    public static final int META_SETVIEWPORTEXT = 526;
    public static final int META_SETVIEWPORTORG = 525;
    public static final int META_SETWINDOWEXT = 524;
    public static final int META_SETWINDOWORG = 523;
    public static final int META_STRETCHBLT = 2851;
    public static final int META_STRETCHDIB = 3907;
    public static final int META_TEXTOUT = 1313;
    int bottom;

    /* JADX INFO: renamed from: cb */
    public PdfCanvas f3178cb;

    /* JADX INFO: renamed from: in */
    public InputMeta f3179in;
    int inch;
    int left;
    int right;
    MetaState state = new MetaState();
    int top;

    public MetaDo(InputStream inputStream, PdfCanvas pdfCanvas) {
        this.f3178cb = pdfCanvas;
        this.f3179in = new InputMeta(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v124 */
    /* JADX WARN: Type inference failed for: r2v57 */
    /* JADX WARN: Type inference failed for: r2v58, types: [int] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v65 */
    /* JADX WARN: Type inference failed for: r4v7, types: [int] */
    public void readAll() throws IOException {
        boolean z;
        int i;
        int i2;
        String str;
        int i3;
        int i4;
        int i5;
        int i6;
        String str2;
        MetaDo metaDo = this;
        if (metaDo.f3179in.readInt() != -1698247209) {
            throw new PdfException(KernelExceptionMessageConstant.NOT_A_PLACEABLE_WINDOWS_METAFILE);
        }
        metaDo.f3179in.readWord();
        metaDo.left = metaDo.f3179in.readShort();
        metaDo.top = metaDo.f3179in.readShort();
        metaDo.right = metaDo.f3179in.readShort();
        metaDo.bottom = metaDo.f3179in.readShort();
        int word = metaDo.f3179in.readWord();
        metaDo.inch = word;
        metaDo.state.setScalingX(((metaDo.right - metaDo.left) / word) * 72.0f);
        metaDo.state.setScalingY(((metaDo.bottom - metaDo.top) / metaDo.inch) * 72.0f);
        metaDo.state.setOffsetWx(metaDo.left);
        metaDo.state.setOffsetWy(metaDo.top);
        metaDo.state.setExtentWx(metaDo.right - metaDo.left);
        metaDo.state.setExtentWy(metaDo.bottom - metaDo.top);
        metaDo.f3179in.readInt();
        metaDo.f3179in.readWord();
        metaDo.f3179in.skip(18);
        boolean z2 = true;
        metaDo.f3178cb.setLineCapStyle(1);
        metaDo.f3178cb.setLineJoinStyle(1);
        while (true) {
            int length = metaDo.f3179in.getLength();
            int i7 = metaDo.f3179in.readInt();
            if (i7 >= 3) {
                int word2 = metaDo.f3179in.readWord();
                int i8 = 0;
                switch (word2) {
                    case 30:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.saveState(metaDo.f3178cb);
                        break;
                    case META_CREATEPALETTE /* 247 */:
                    case 322:
                    case META_CREATEREGION /* 1791 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.addMetaObject(new MetaObject());
                        break;
                    case 258:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setBackgroundMode(metaDo.f3179in.readWord());
                        break;
                    case 262:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setPolyFillMode(metaDo.f3179in.readWord());
                        break;
                    case META_RESTOREDC /* 295 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.restoreState(metaDo.f3179in.readShort(), metaDo.f3178cb);
                        break;
                    case 301:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.selectMetaObject(metaDo.f3179in.readWord(), metaDo.f3178cb);
                        break;
                    case 302:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setTextAlign(metaDo.f3179in.readWord());
                        break;
                    case META_DELETEOBJECT /* 496 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.deleteMetaObject(metaDo.f3179in.readWord());
                        break;
                    case 513:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setCurrentBackgroundColor(metaDo.f3179in.readColor());
                        break;
                    case 521:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setCurrentTextColor(metaDo.f3179in.readColor());
                        break;
                    case META_SETWINDOWORG /* 523 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setOffsetWy(metaDo.f3179in.readShort());
                        metaDo.state.setOffsetWx(metaDo.f3179in.readShort());
                        break;
                    case META_SETWINDOWEXT /* 524 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setExtentWy(metaDo.f3179in.readShort());
                        metaDo.state.setExtentWx(metaDo.f3179in.readShort());
                        break;
                    case 531:
                        z = z2;
                        i = length;
                        i2 = i7;
                        int i9 = metaDo.f3179in.readShort();
                        int i10 = metaDo.f3179in.readShort();
                        Point currentPoint = metaDo.state.getCurrentPoint();
                        metaDo.f3178cb.moveTo(metaDo.state.transformX((int) currentPoint.getX()), metaDo.state.transformY((int) currentPoint.getY()));
                        metaDo.f3178cb.lineTo(metaDo.state.transformX(i10), metaDo.state.transformY(i9));
                        metaDo.f3178cb.stroke();
                        metaDo.state.setCurrentPoint(new Point(i10, i9));
                        break;
                    case 532:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setCurrentPoint(new Point(metaDo.f3179in.readShort(), metaDo.f3179in.readShort()));
                        break;
                    case META_CREATEPENINDIRECT /* 762 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        MetaPen metaPen = new MetaPen();
                        metaPen.init(metaDo.f3179in);
                        metaDo.state.addMetaObject(metaPen);
                        break;
                    case META_CREATEFONTINDIRECT /* 763 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        MetaFont metaFont = new MetaFont();
                        metaFont.init(metaDo.f3179in);
                        metaDo.state.addMetaObject(metaFont);
                        break;
                    case META_CREATEBRUSHINDIRECT /* 764 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        MetaBrush metaBrush = new MetaBrush();
                        metaBrush.init(metaDo.f3179in);
                        metaDo.state.addMetaObject(metaBrush);
                        break;
                    case META_POLYGON /* 804 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        if (!metaDo.isNullStrokeFill(false)) {
                            int word3 = metaDo.f3179in.readWord();
                            int i11 = metaDo.f3179in.readShort();
                            int i12 = metaDo.f3179in.readShort();
                            metaDo.f3178cb.moveTo(metaDo.state.transformX(i11), metaDo.state.transformY(i12));
                            for (?? r4 = z; r4 < word3; r4++) {
                                metaDo.f3178cb.lineTo(metaDo.state.transformX(metaDo.f3179in.readShort()), metaDo.state.transformY(metaDo.f3179in.readShort()));
                            }
                            metaDo.f3178cb.lineTo(metaDo.state.transformX(i11), metaDo.state.transformY(i12));
                            strokeAndFill();
                        }
                        break;
                    case META_POLYLINE /* 805 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        metaDo.state.setLineJoinPolygon(metaDo.f3178cb);
                        int word4 = metaDo.f3179in.readWord();
                        metaDo.f3178cb.moveTo(metaDo.state.transformX(metaDo.f3179in.readShort()), metaDo.state.transformY(metaDo.f3179in.readShort()));
                        for (?? r2 = z; r2 < word4; r2++) {
                            metaDo.f3178cb.lineTo(metaDo.state.transformX(metaDo.f3179in.readShort()), metaDo.state.transformY(metaDo.f3179in.readShort()));
                        }
                        metaDo.f3178cb.stroke();
                        break;
                    case META_INTERSECTCLIPRECT /* 1046 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        float fTransformY = metaDo.state.transformY(metaDo.f3179in.readShort());
                        float fTransformX = metaDo.state.transformX(metaDo.f3179in.readShort());
                        float fTransformY2 = metaDo.state.transformY(metaDo.f3179in.readShort());
                        metaDo.f3178cb.rectangle(metaDo.state.transformX(metaDo.f3179in.readShort()), fTransformY, fTransformX - r4, fTransformY2 - fTransformY);
                        metaDo.f3178cb.eoClip();
                        metaDo.f3178cb.endPath();
                        break;
                    case META_ELLIPSE /* 1048 */:
                        z = z2;
                        i = length;
                        i2 = i7;
                        if (!metaDo.isNullStrokeFill(metaDo.state.getLineNeutral())) {
                            int i13 = metaDo.f3179in.readShort();
                            int i14 = metaDo.f3179in.readShort();
                            int i15 = metaDo.f3179in.readShort();
                            metaDo.f3178cb.arc(metaDo.state.transformX(metaDo.f3179in.readShort()), metaDo.state.transformY(i13), metaDo.state.transformX(i14), metaDo.state.transformY(i15), 0.0d, 360.0d);
                            strokeAndFill();
                        }
                        break;
                    case 1051:
                        z = z2;
                        i = length;
                        i2 = i7;
                        if (!metaDo.isNullStrokeFill(z)) {
                            float fTransformY3 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX2 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY4 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            metaDo.f3178cb.rectangle(metaDo.state.transformX(metaDo.f3179in.readShort()), fTransformY3, fTransformX2 - r4, fTransformY4 - fTransformY3);
                            strokeAndFill();
                        }
                        break;
                    case 1055:
                        i = length;
                        i2 = i7;
                        Color color = metaDo.f3179in.readColor();
                        int i16 = metaDo.f3179in.readShort();
                        int i17 = metaDo.f3179in.readShort();
                        metaDo.f3178cb.saveState();
                        metaDo.f3178cb.setFillColor(color);
                        metaDo.f3178cb.rectangle(metaDo.state.transformX(i17), metaDo.state.transformY(i16), 0.20000000298023224d, 0.20000000298023224d);
                        metaDo.f3178cb.fill();
                        metaDo.f3178cb.restoreState();
                        z = true;
                        break;
                    case META_TEXTOUT /* 1313 */:
                        i = length;
                        i2 = i7;
                        int word5 = metaDo.f3179in.readWord();
                        byte[] bArr = new byte[word5];
                        int i18 = 0;
                        while (i18 < word5) {
                            byte b = (byte) metaDo.f3179in.readByte();
                            if (b != 0) {
                                bArr[i18] = b;
                                i18++;
                            }
                        }
                        try {
                            str = new String(bArr, 0, i18, "Cp1252");
                        } catch (UnsupportedEncodingException unused) {
                            str = new String(bArr, 0, i18);
                        }
                        metaDo.f3179in.skip(((word5 + 1) & 65534) - i18);
                        outputText(metaDo.f3179in.readShort(), metaDo.f3179in.readShort(), 0, 0, 0, 0, 0, str);
                        z = true;
                        break;
                    case META_POLYPOLYGON /* 1336 */:
                        i = length;
                        i2 = i7;
                        if (!metaDo.isNullStrokeFill(false)) {
                            int word6 = metaDo.f3179in.readWord();
                            int[] iArr = new int[word6];
                            for (int i19 = 0; i19 < word6; i19++) {
                                iArr[i19] = metaDo.f3179in.readWord();
                            }
                            while (i8 < word6) {
                                int i20 = iArr[i8];
                                int i21 = metaDo.f3179in.readShort();
                                int i22 = metaDo.f3179in.readShort();
                                metaDo.f3178cb.moveTo(metaDo.state.transformX(i21), metaDo.state.transformY(i22));
                                for (int i23 = 1; i23 < i20; i23++) {
                                    metaDo.f3178cb.lineTo(metaDo.state.transformX(metaDo.f3179in.readShort()), metaDo.state.transformY(metaDo.f3179in.readShort()));
                                }
                                metaDo.f3178cb.lineTo(metaDo.state.transformX(i21), metaDo.state.transformY(i22));
                                i8++;
                            }
                            strokeAndFill();
                        }
                        z = true;
                        break;
                    case META_ROUNDRECT /* 1564 */:
                        i = length;
                        i2 = i7;
                        if (!metaDo.isNullStrokeFill(z2)) {
                            float fTransformY5 = metaDo.state.transformY(0) - metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX3 = metaDo.state.transformX(metaDo.f3179in.readShort()) - metaDo.state.transformX(0);
                            float fTransformY6 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX4 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY7 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            metaDo.f3178cb.roundRectangle(metaDo.state.transformX(metaDo.f3179in.readShort()), fTransformY6, fTransformX4 - r5, fTransformY7 - fTransformY6, (fTransformY5 + fTransformX3) / 4.0f);
                            strokeAndFill();
                        }
                        z = true;
                        break;
                    case META_ARC /* 2071 */:
                        i = length;
                        i2 = i7;
                        if (!metaDo.isNullStrokeFill(metaDo.state.getLineNeutral())) {
                            float fTransformY8 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX5 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY9 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX6 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY10 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX7 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY11 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX8 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float f = (fTransformX7 + fTransformX8) / 2.0f;
                            float f2 = (fTransformY11 + fTransformY10) / 2.0f;
                            float arc = getArc(f, f2, fTransformX6, fTransformY9);
                            float arc2 = getArc(f, f2, fTransformX5, fTransformY8) - arc;
                            if (arc2 <= 0.0f) {
                                arc2 += 360.0f;
                            }
                            metaDo.f3178cb.arc(fTransformX8, fTransformY10, fTransformX7, fTransformY11, arc, arc2);
                            metaDo = this;
                            metaDo.f3178cb.stroke();
                        }
                        z = true;
                        break;
                    case META_PIE /* 2074 */:
                        i = length;
                        if (metaDo.isNullStrokeFill(metaDo.state.getLineNeutral())) {
                            i2 = i7;
                        } else {
                            float fTransformY12 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX9 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY13 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX10 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY14 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX11 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY15 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX12 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float f3 = (fTransformX11 + fTransformX12) / 2.0f;
                            float f4 = (fTransformY15 + fTransformY14) / 2.0f;
                            float arc3 = getArc(f3, f4, fTransformX10, fTransformY13);
                            float arc4 = getArc(f3, f4, fTransformX9, fTransformY12) - arc3;
                            if (arc4 <= 0.0f) {
                                arc4 += 360.0f;
                            }
                            i2 = i7;
                            List<double[]> listBezierArc = PdfCanvas.bezierArc(fTransformX12, fTransformY14, fTransformX11, fTransformY15, arc3, arc4);
                            if (listBezierArc.size() != 0) {
                                double[] dArr = listBezierArc.get(0);
                                double d = f3;
                                double d2 = f4;
                                metaDo.f3178cb.moveTo(d, d2);
                                metaDo.f3178cb.lineTo(dArr[0], dArr[1]);
                                while (i8 < listBezierArc.size()) {
                                    double[] dArr2 = listBezierArc.get(i8);
                                    metaDo.f3178cb.curveTo(dArr2[2], dArr2[3], dArr2[4], dArr2[5], dArr2[6], dArr2[7]);
                                    i8++;
                                }
                                metaDo.f3178cb.lineTo(d, d2);
                                strokeAndFill();
                            }
                        }
                        z = true;
                        break;
                    case META_CHORD /* 2096 */:
                        i = length;
                        if (!metaDo.isNullStrokeFill(metaDo.state.getLineNeutral())) {
                            float fTransformY16 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX13 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY17 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX14 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY18 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX15 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float fTransformY19 = metaDo.state.transformY(metaDo.f3179in.readShort());
                            float fTransformX16 = metaDo.state.transformX(metaDo.f3179in.readShort());
                            float f5 = (fTransformX15 + fTransformX16) / 2.0f;
                            float f6 = (fTransformY19 + fTransformY18) / 2.0f;
                            float arc5 = getArc(f5, f6, fTransformX14, fTransformY17);
                            float arc6 = getArc(f5, f6, fTransformX13, fTransformY16) - arc5;
                            if (arc6 <= 0.0f) {
                                arc6 += 360.0f;
                            }
                            List<double[]> listBezierArc2 = PdfCanvas.bezierArc(fTransformX16, fTransformY18, fTransformX15, fTransformY19, arc5, arc6);
                            if (listBezierArc2.size() != 0) {
                                double[] dArr3 = listBezierArc2.get(0);
                                double d3 = (float) dArr3[0];
                                double d4 = (float) dArr3[1];
                                metaDo.f3178cb.moveTo(d3, d4);
                                while (i8 < listBezierArc2.size()) {
                                    double[] dArr4 = listBezierArc2.get(i8);
                                    metaDo.f3178cb.curveTo(dArr4[2], dArr4[3], dArr4[4], dArr4[5], dArr4[6], dArr4[7]);
                                    i8++;
                                }
                                metaDo.f3178cb.lineTo(d3, d4);
                                strokeAndFill();
                            }
                        }
                        i2 = i7;
                        z = true;
                        break;
                    case META_EXTTEXTOUT /* 2610 */:
                        i = length;
                        int i24 = metaDo.f3179in.readShort();
                        int i25 = metaDo.f3179in.readShort();
                        int word7 = metaDo.f3179in.readWord();
                        int word8 = metaDo.f3179in.readWord();
                        if ((word8 & 6) != 0) {
                            i3 = metaDo.f3179in.readShort();
                            i4 = metaDo.f3179in.readShort();
                            i5 = metaDo.f3179in.readShort();
                            i6 = metaDo.f3179in.readShort();
                        } else {
                            i3 = 0;
                            i4 = 0;
                            i5 = 0;
                            i6 = 0;
                        }
                        byte[] bArr2 = new byte[word7];
                        int i26 = 0;
                        while (i26 < word7) {
                            byte b2 = (byte) metaDo.f3179in.readByte();
                            if (b2 != 0) {
                                bArr2[i26] = b2;
                                i26++;
                            }
                        }
                        try {
                            str2 = new String(bArr2, 0, i26, "Cp1252");
                        } catch (UnsupportedEncodingException unused2) {
                            str2 = new String(bArr2, 0, i26);
                        }
                        outputText(i25, i24, word8, i3, i4, i5, i6, str2);
                        i2 = i7;
                        z = true;
                        break;
                    case META_DIBSTRETCHBLT /* 2881 */:
                    case META_STRETCHDIB /* 3907 */:
                        metaDo.f3179in.readInt();
                        if (word2 == 3907) {
                            metaDo.f3179in.readWord();
                        }
                        int i27 = metaDo.f3179in.readShort();
                        int i28 = metaDo.f3179in.readShort();
                        int i29 = metaDo.f3179in.readShort();
                        int i30 = metaDo.f3179in.readShort();
                        float fTransformY20 = metaDo.state.transformY(metaDo.f3179in.readShort()) - metaDo.state.transformY(0);
                        float fTransformX17 = metaDo.state.transformX(metaDo.f3179in.readShort()) - metaDo.state.transformX(0);
                        float fTransformY21 = metaDo.state.transformY(metaDo.f3179in.readShort());
                        float fTransformX18 = metaDo.state.transformX(metaDo.f3179in.readShort());
                        int length2 = (i7 * 2) - (metaDo.f3179in.getLength() - length);
                        byte[] bArr3 = new byte[length2];
                        while (i8 < length2) {
                            bArr3[i8] = (byte) metaDo.f3179in.readByte();
                            i8++;
                        }
                        try {
                            metaDo.f3178cb.saveState();
                            i = length;
                            try {
                                metaDo.f3178cb.rectangle(fTransformX18, fTransformY21, fTransformX17, fTransformY20);
                                metaDo.f3178cb.clip();
                                metaDo.f3178cb.endPath();
                                ImageData imageDataCreateBmp = ImageDataFactory.createBmp(bArr3, true);
                                PdfImageXObject pdfImageXObject = new PdfImageXObject(imageDataCreateBmp);
                                float f7 = i28;
                                float width = (imageDataCreateBmp.getWidth() * fTransformX17) / f7;
                                float height = (-fTransformY20) * imageDataCreateBmp.getHeight();
                                float f8 = i27;
                                float f9 = height / f8;
                                metaDo.f3178cb.addXObjectFittedIntoRectangle(pdfImageXObject, new Rectangle(fTransformX18 - ((fTransformX17 * i30) / f7), (fTransformY21 + ((fTransformY20 * i29) / f8)) - f9, width, f9));
                                metaDo.f3178cb.restoreState();
                                break;
                            } catch (Exception unused3) {
                            }
                        } catch (Exception unused4) {
                            i = length;
                        }
                        i2 = i7;
                        z = true;
                        break;
                    default:
                        z = z2;
                        i = length;
                        i2 = i7;
                        break;
                }
                InputMeta inputMeta = metaDo.f3179in;
                inputMeta.skip((i2 * 2) - (inputMeta.getLength() - i));
                z2 = z;
            } else {
                metaDo.state.cleanup(metaDo.f3178cb);
                return;
            }
        }
    }

    public void outputText(int i, int i2, int i3, int i4, int i5, int i6, int i7, String str) throws IOException {
        float f;
        MetaFont currentFont = this.state.getCurrentFont();
        float fTransformX = this.state.transformX(i);
        float fTransformY = this.state.transformY(i2);
        double dTransformAngle = this.state.transformAngle(currentFont.getAngle());
        float fSin = (float) Math.sin(dTransformAngle);
        float fCos = (float) Math.cos(dTransformAngle);
        float fontSize = currentFont.getFontSize(this.state);
        FontProgram font = currentFont.getFont();
        int textAlign = this.state.getTextAlign();
        int width = 0;
        for (byte b : currentFont.encoding.convertToBytes(str)) {
            width += font.getWidth(b & 255);
        }
        float f2 = (fontSize / 1000.0f) * width;
        float typoDescender = font.getFontMetrics().getTypoDescender();
        float f3 = font.getFontMetrics().getBbox()[3];
        this.f3178cb.saveState();
        double d = fCos;
        this.f3178cb.concatMatrix(d, fSin, -fSin, d, fTransformX, fTransformY);
        float f4 = 0.0f;
        float f5 = (textAlign & 6) == 6 ? (-f2) / 2.0f : (textAlign & 2) == 2 ? -f2 : 0.0f;
        if ((textAlign & 24) == 24) {
            f = f3;
        } else if ((textAlign & 8) == 8) {
            f4 = -typoDescender;
            f = f3;
        } else {
            f = f3;
            f4 = -f;
        }
        if (this.state.getBackgroundMode() == 2) {
            this.f3178cb.setFillColor(this.state.getCurrentBackgroundColor());
            this.f3178cb.rectangle(f5, f4 + typoDescender, f2, f - typoDescender);
            this.f3178cb.fill();
        }
        this.f3178cb.setFillColor(this.state.getCurrentTextColor());
        this.f3178cb.beginText();
        this.f3178cb.setFontAndSize(PdfFontFactory.createFont(this.state.getCurrentFont().getFont(), "Cp1252", PdfFontFactory.EmbeddingStrategy.PREFER_EMBEDDED), fontSize);
        this.f3178cb.setTextMatrix(f5, f4);
        this.f3178cb.showText(str);
        this.f3178cb.endText();
        if (currentFont.isUnderline()) {
            this.f3178cb.rectangle(f5, f4 - (fontSize / 4.0f), f2, fontSize / 15.0f);
            this.f3178cb.fill();
        }
        if (currentFont.isStrikeout()) {
            this.f3178cb.rectangle(f5, f4 + (fontSize / 3.0f), f2, fontSize / 15.0f);
            this.f3178cb.fill();
        }
        this.f3178cb.restoreState();
    }

    public boolean isNullStrokeFill(boolean z) {
        MetaPen currentPen = this.state.getCurrentPen();
        MetaBrush currentBrush = this.state.getCurrentBrush();
        boolean z2 = currentPen.getStyle() == 5;
        int style = currentBrush.getStyle();
        boolean z3 = z2 && !(style == 0 || (style == 2 && this.state.getBackgroundMode() == 2));
        if (!z2) {
            if (z) {
                this.state.setLineJoinRectangle(this.f3178cb);
            } else {
                this.state.setLineJoinPolygon(this.f3178cb);
            }
        }
        return z3;
    }

    public void strokeAndFill() {
        MetaPen currentPen = this.state.getCurrentPen();
        MetaBrush currentBrush = this.state.getCurrentBrush();
        int style = currentPen.getStyle();
        int style2 = currentBrush.getStyle();
        if (style == 5) {
            this.f3178cb.closePath();
            if (this.state.getPolyFillMode() == 1) {
                this.f3178cb.eoFill();
                return;
            } else {
                this.f3178cb.fill();
                return;
            }
        }
        if (style2 == 0 || (style2 == 2 && this.state.getBackgroundMode() == 2)) {
            if (this.state.getPolyFillMode() == 1) {
                this.f3178cb.closePathEoFillStroke();
                return;
            } else {
                this.f3178cb.closePathFillStroke();
                return;
            }
        }
        this.f3178cb.closePathStroke();
    }

    static float getArc(float f, float f2, float f3, float f4) {
        double dAtan2 = Math.atan2(f4 - f2, f3 - f);
        if (dAtan2 < 0.0d) {
            dAtan2 += 6.283185307179586d;
        }
        return (float) ((dAtan2 / 3.141592653589793d) * 180.0d);
    }

    public static byte[] wrapBMP(ImageData imageData) throws IOException {
        byte[] data;
        if (imageData.getOriginalType() != ImageType.BMP) {
            throw new PdfException(KernelExceptionMessageConstant.ONLY_BMP_CAN_BE_WRAPPED_IN_WMF);
        }
        if (imageData.getData() == null) {
            InputStream inputStreamOpenStream = FirebasePerfUrlConnection.openStream(imageData.getUrl());
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            while (true) {
                int i = inputStreamOpenStream.read();
                if (i == -1) {
                    break;
                }
                byteArrayOutputStream.write(i);
            }
            inputStreamOpenStream.close();
            data = byteArrayOutputStream.toByteArray();
        } else {
            data = imageData.getData();
        }
        int length = (data.length - 13) >>> 1;
        ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
        writeWord(byteArrayOutputStream2, 1);
        writeWord(byteArrayOutputStream2, 9);
        writeWord(byteArrayOutputStream2, ViewUtils.EDGE_TO_EDGE_FLAGS);
        writeDWord(byteArrayOutputStream2, length + 39);
        writeWord(byteArrayOutputStream2, 1);
        writeDWord(byteArrayOutputStream2, length + 14);
        writeWord(byteArrayOutputStream2, 0);
        writeDWord(byteArrayOutputStream2, 4);
        writeWord(byteArrayOutputStream2, 259);
        writeWord(byteArrayOutputStream2, 8);
        writeDWord(byteArrayOutputStream2, 5);
        writeWord(byteArrayOutputStream2, META_SETWINDOWORG);
        writeWord(byteArrayOutputStream2, 0);
        writeWord(byteArrayOutputStream2, 0);
        writeDWord(byteArrayOutputStream2, 5);
        writeWord(byteArrayOutputStream2, META_SETWINDOWEXT);
        writeWord(byteArrayOutputStream2, (int) imageData.getHeight());
        writeWord(byteArrayOutputStream2, (int) imageData.getWidth());
        writeDWord(byteArrayOutputStream2, length + 13);
        writeWord(byteArrayOutputStream2, META_DIBSTRETCHBLT);
        writeDWord(byteArrayOutputStream2, 13369376);
        writeWord(byteArrayOutputStream2, (int) imageData.getHeight());
        writeWord(byteArrayOutputStream2, (int) imageData.getWidth());
        writeWord(byteArrayOutputStream2, 0);
        writeWord(byteArrayOutputStream2, 0);
        writeWord(byteArrayOutputStream2, (int) imageData.getHeight());
        writeWord(byteArrayOutputStream2, (int) imageData.getWidth());
        writeWord(byteArrayOutputStream2, 0);
        writeWord(byteArrayOutputStream2, 0);
        byteArrayOutputStream2.write(data, 14, data.length - 14);
        if ((data.length & 1) == 1) {
            byteArrayOutputStream2.write(0);
        }
        writeDWord(byteArrayOutputStream2, 3);
        writeWord(byteArrayOutputStream2, 0);
        byteArrayOutputStream2.close();
        return byteArrayOutputStream2.toByteArray();
    }

    public static void writeWord(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & 255);
        outputStream.write((i >>> 8) & 255);
    }

    public static void writeDWord(OutputStream outputStream, int i) throws IOException {
        writeWord(outputStream, i & 65535);
        writeWord(outputStream, (i >>> 16) & 65535);
    }
}
