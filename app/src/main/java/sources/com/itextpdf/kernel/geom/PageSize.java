package com.itextpdf.kernel.geom;

/* JADX INFO: loaded from: classes6.dex */
public class PageSize extends Rectangle implements Cloneable {
    public static final PageSize A10;

    /* JADX INFO: renamed from: A4 */
    public static final PageSize f2944A4;

    /* JADX INFO: renamed from: A5 */
    public static final PageSize f2945A5;

    /* JADX INFO: renamed from: A6 */
    public static final PageSize f2946A6;

    /* JADX INFO: renamed from: A7 */
    public static final PageSize f2947A7;

    /* JADX INFO: renamed from: A8 */
    public static final PageSize f2948A8;

    /* JADX INFO: renamed from: A9 */
    public static final PageSize f2949A9;

    /* JADX INFO: renamed from: B0 */
    public static final PageSize f2950B0;

    /* JADX INFO: renamed from: B1 */
    public static final PageSize f2951B1;
    public static final PageSize B10;

    /* JADX INFO: renamed from: B2 */
    public static final PageSize f2952B2;

    /* JADX INFO: renamed from: B3 */
    public static final PageSize f2953B3;

    /* JADX INFO: renamed from: B4 */
    public static final PageSize f2954B4;

    /* JADX INFO: renamed from: B5 */
    public static final PageSize f2955B5;

    /* JADX INFO: renamed from: B6 */
    public static final PageSize f2956B6;

    /* JADX INFO: renamed from: B7 */
    public static final PageSize f2957B7;

    /* JADX INFO: renamed from: B8 */
    public static final PageSize f2958B8;

    /* JADX INFO: renamed from: B9 */
    public static final PageSize f2959B9;
    public static final PageSize DEFAULT;
    public static final PageSize EXECUTIVE;
    public static final PageSize LEDGER;
    public static final PageSize LEGAL;
    public static final PageSize LETTER;
    public static final PageSize TABLOID;

    /* JADX INFO: renamed from: A0 */
    public static final PageSize f2940A0 = new PageSize(2384.0f, 3370.0f);

    /* JADX INFO: renamed from: A1 */
    public static final PageSize f2941A1 = new PageSize(1684.0f, 2384.0f);

    /* JADX INFO: renamed from: A2 */
    public static final PageSize f2942A2 = new PageSize(1190.0f, 1684.0f);

    /* JADX INFO: renamed from: A3 */
    public static final PageSize f2943A3 = new PageSize(842.0f, 1190.0f);

    static {
        PageSize pageSize = new PageSize(595.0f, 842.0f);
        f2944A4 = pageSize;
        f2945A5 = new PageSize(420.0f, 595.0f);
        f2946A6 = new PageSize(298.0f, 420.0f);
        f2947A7 = new PageSize(210.0f, 298.0f);
        f2948A8 = new PageSize(148.0f, 210.0f);
        f2949A9 = new PageSize(105.0f, 547.0f);
        A10 = new PageSize(74.0f, 105.0f);
        f2950B0 = new PageSize(2834.0f, 4008.0f);
        f2951B1 = new PageSize(2004.0f, 2834.0f);
        f2952B2 = new PageSize(1417.0f, 2004.0f);
        f2953B3 = new PageSize(1000.0f, 1417.0f);
        f2954B4 = new PageSize(708.0f, 1000.0f);
        f2955B5 = new PageSize(498.0f, 708.0f);
        f2956B6 = new PageSize(354.0f, 498.0f);
        f2957B7 = new PageSize(249.0f, 354.0f);
        f2958B8 = new PageSize(175.0f, 249.0f);
        f2959B9 = new PageSize(124.0f, 175.0f);
        B10 = new PageSize(88.0f, 124.0f);
        DEFAULT = pageSize;
        EXECUTIVE = new PageSize(522.0f, 756.0f);
        LEDGER = new PageSize(1224.0f, 792.0f);
        LEGAL = new PageSize(612.0f, 1008.0f);
        LETTER = new PageSize(612.0f, 792.0f);
        TABLOID = new PageSize(792.0f, 1224.0f);
    }

    public PageSize(float f, float f2) {
        super(0.0f, 0.0f, f, f2);
    }

    public PageSize(Rectangle rectangle) {
        super(rectangle.getX(), rectangle.getY(), rectangle.getWidth(), rectangle.getHeight());
    }

    public PageSize rotate() {
        return new PageSize(this.height, this.width);
    }

    @Override // com.itextpdf.kernel.geom.Rectangle
    /* JADX INFO: renamed from: clone */
    public Rectangle mo3120clone() {
        return super.mo3120clone();
    }
}
