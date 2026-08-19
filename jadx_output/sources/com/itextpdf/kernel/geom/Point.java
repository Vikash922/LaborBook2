package com.itextpdf.kernel.geom;

import com.itextpdf.commons.utils.MessageFormatUtil;
import com.itextpdf.p017io.util.HashCode;

/* JADX INFO: loaded from: classes6.dex */
public class Point implements Cloneable {

    /* JADX INFO: renamed from: x */
    public double f2960x;

    /* JADX INFO: renamed from: y */
    public double f2961y;

    public static double distanceSq(double d, double d2, double d3, double d4) {
        double d5 = d3 - d;
        double d6 = d4 - d2;
        return (d5 * d5) + (d6 * d6);
    }

    public Point() {
        setLocation(0, 0);
    }

    public Point(int i, int i2) {
        setLocation(i, i2);
    }

    public Point(double d, double d2) {
        setLocation(d, d2);
    }

    public Point(Point point) {
        setLocation(point.f2960x, point.f2961y);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Point)) {
            return false;
        }
        Point point = (Point) obj;
        return this.f2960x == point.f2960x && this.f2961y == point.f2961y;
    }

    public String toString() {
        return MessageFormatUtil.format("Point: [x={0},y={1}]", Double.valueOf(this.f2960x), Double.valueOf(this.f2961y));
    }

    public double getX() {
        return this.f2960x;
    }

    public double getY() {
        return this.f2961y;
    }

    public Point getLocation() {
        return new Point(this.f2960x, this.f2961y);
    }

    public void setLocation(Point point) {
        setLocation(point.f2960x, point.f2961y);
    }

    public void setLocation(int i, int i2) {
        setLocation(i, i2);
    }

    public void setLocation(double d, double d2) {
        this.f2960x = d;
        this.f2961y = d2;
    }

    public void move(double d, double d2) {
        setLocation(d, d2);
    }

    public void translate(double d, double d2) {
        this.f2960x += d;
        this.f2961y += d2;
    }

    public int hashCode() {
        HashCode hashCode = new HashCode();
        hashCode.append(getX());
        hashCode.append(getY());
        return hashCode.hashCode();
    }

    public double distanceSq(double d, double d2) {
        return distanceSq(getX(), getY(), d, d2);
    }

    public double distanceSq(Point point) {
        return distanceSq(getX(), getY(), point.getX(), point.getY());
    }

    public static double distance(double d, double d2, double d3, double d4) {
        return Math.sqrt(distanceSq(d, d2, d3, d4));
    }

    public double distance(double d, double d2) {
        return Math.sqrt(distanceSq(d, d2));
    }

    public double distance(Point point) {
        return Math.sqrt(distanceSq(point));
    }

    public Object clone() {
        return new Point(this.f2960x, this.f2961y);
    }
}
