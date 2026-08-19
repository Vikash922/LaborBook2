package com.itextpdf.layout;

import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.properties.VerticalAlignment;

/* JADX INFO: loaded from: classes6.dex */
public class Style extends ElementPropertyContainer<Style> {
    public Style() {
    }

    public Style(Style style) {
        this.properties.putAll(style.properties);
    }

    public UnitValue getMarginLeft() {
        return (UnitValue) getProperty(44);
    }

    public Style setMarginLeft(float f) {
        setProperty(44, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginRight() {
        return (UnitValue) getProperty(45);
    }

    public Style setMarginRight(float f) {
        setProperty(45, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginTop() {
        return (UnitValue) getProperty(46);
    }

    public Style setMarginTop(float f) {
        setProperty(46, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginBottom() {
        return (UnitValue) getProperty(43);
    }

    public Style setMarginBottom(float f) {
        setProperty(43, UnitValue.createPointValue(f));
        return this;
    }

    public Style setMargin(float f) {
        return setMargins(f, f, f, f);
    }

    public Style setMargins(float f, float f2, float f3, float f4) {
        setMarginTop(f);
        setMarginRight(f2);
        setMarginBottom(f3);
        setMarginLeft(f4);
        return this;
    }

    public UnitValue getPaddingLeft() {
        return (UnitValue) getProperty(48);
    }

    public Style setPaddingLeft(float f) {
        setProperty(48, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingRight() {
        return (UnitValue) getProperty(49);
    }

    public Style setPaddingRight(float f) {
        setProperty(49, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingTop() {
        return (UnitValue) getProperty(50);
    }

    public Style setPaddingTop(float f) {
        setProperty(50, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingBottom() {
        return (UnitValue) getProperty(47);
    }

    public Style setPaddingBottom(float f) {
        setProperty(47, UnitValue.createPointValue(f));
        return this;
    }

    public Style setPadding(float f) {
        return setPaddings(f, f, f, f);
    }

    public Style setPaddings(float f, float f2, float f3, float f4) {
        setPaddingTop(f);
        setPaddingRight(f2);
        setPaddingBottom(f3);
        setPaddingLeft(f4);
        return this;
    }

    public Style setVerticalAlignment(VerticalAlignment verticalAlignment) {
        setProperty(75, verticalAlignment);
        return this;
    }

    public Style setSpacingRatio(float f) {
        setProperty(61, Float.valueOf(f));
        return this;
    }

    public Boolean isKeepTogether() {
        return (Boolean) getProperty(32);
    }

    public Style setKeepTogether(boolean z) {
        setProperty(32, Boolean.valueOf(z));
        return this;
    }

    public Style setRotationAngle(float f) {
        setProperty(55, Float.valueOf(f));
        return this;
    }

    public Style setRotationAngle(double d) {
        setProperty(55, Float.valueOf((float) d));
        return this;
    }

    public Style setWidth(float f) {
        setProperty(77, UnitValue.createPointValue(f));
        return this;
    }

    public Style setWidth(UnitValue unitValue) {
        setProperty(77, unitValue);
        return this;
    }

    public UnitValue getWidth() {
        return (UnitValue) getProperty(77);
    }

    public Style setHeight(UnitValue unitValue) {
        setProperty(27, unitValue);
        return this;
    }

    public Style setHeight(float f) {
        setProperty(27, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getHeight() {
        return (UnitValue) getProperty(27);
    }

    public Style setMaxHeight(float f) {
        setProperty(84, UnitValue.createPointValue(f));
        return this;
    }

    public Style setMaxHeight(UnitValue unitValue) {
        setProperty(84, unitValue);
        return this;
    }

    public Style setMinHeight(UnitValue unitValue) {
        setProperty(85, unitValue);
        return this;
    }

    public Style setMinHeight(float f) {
        setProperty(85, UnitValue.createPointValue(f));
        return this;
    }

    public Style setMaxWidth(UnitValue unitValue) {
        setProperty(79, unitValue);
        return this;
    }

    public Style setMaxWidth(float f) {
        setProperty(79, UnitValue.createPointValue(f));
        return this;
    }

    public Style setMinWidth(UnitValue unitValue) {
        setProperty(80, unitValue);
        return this;
    }

    public Style setMinWidth(float f) {
        setProperty(80, UnitValue.createPointValue(f));
        return this;
    }
}
