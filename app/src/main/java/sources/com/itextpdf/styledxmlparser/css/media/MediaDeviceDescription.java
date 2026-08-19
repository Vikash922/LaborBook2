package com.itextpdf.styledxmlparser.css.media;

/* JADX INFO: loaded from: classes6.dex */
public class MediaDeviceDescription {
    private static final MediaDeviceDescription DEFAULT = createDefault();
    private int bitsPerComponent;
    private int colorIndex;
    private float height;
    private boolean isGrid;
    private int monochrome;
    private String orientation;
    private float resolution;
    private String scan;
    private String type;
    private float width;

    public MediaDeviceDescription(String str) {
        this.bitsPerComponent = 0;
        this.colorIndex = 0;
        this.type = str;
    }

    public MediaDeviceDescription(String str, float f, float f2) {
        this(str);
        this.width = f;
        this.height = f2;
    }

    public static MediaDeviceDescription createDefault() {
        return new MediaDeviceDescription(MediaType.ALL);
    }

    public static MediaDeviceDescription getDefault() {
        return DEFAULT;
    }

    public String getType() {
        return this.type;
    }

    public int getBitsPerComponent() {
        return this.bitsPerComponent;
    }

    public MediaDeviceDescription setBitsPerComponent(int i) {
        this.bitsPerComponent = i;
        return this;
    }

    public int getColorIndex() {
        return this.colorIndex;
    }

    public MediaDeviceDescription setColorIndex(int i) {
        this.colorIndex = i;
        return this;
    }

    public float getWidth() {
        return this.width;
    }

    public MediaDeviceDescription setWidth(float f) {
        this.width = f;
        return this;
    }

    public float getHeight() {
        return this.height;
    }

    public MediaDeviceDescription setHeight(float f) {
        this.height = f;
        return this;
    }

    public boolean isGrid() {
        return this.isGrid;
    }

    public MediaDeviceDescription setGrid(boolean z) {
        this.isGrid = z;
        return this;
    }

    public String getScan() {
        return this.scan;
    }

    public MediaDeviceDescription setScan(String str) {
        this.scan = str;
        return this;
    }

    public String getOrientation() {
        return this.orientation;
    }

    public MediaDeviceDescription setOrientation(String str) {
        this.orientation = str;
        return this;
    }

    public int getMonochrome() {
        return this.monochrome;
    }

    public MediaDeviceDescription setMonochrome(int i) {
        this.monochrome = i;
        return this;
    }

    public float getResolution() {
        return this.resolution;
    }

    public MediaDeviceDescription setResolution(float f) {
        this.resolution = f;
        return this;
    }
}
