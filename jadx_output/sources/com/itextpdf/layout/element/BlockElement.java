package com.itextpdf.layout.element;

import com.itextpdf.layout.element.IElement;
import com.itextpdf.layout.properties.OverflowPropertyValue;
import com.itextpdf.layout.properties.UnitValue;
import com.itextpdf.layout.properties.VerticalAlignment;
import com.itextpdf.layout.tagging.IAccessibleElement;

/* JADX INFO: loaded from: classes6.dex */
public abstract class BlockElement<T extends IElement> extends AbstractElement<T> implements IAccessibleElement, IBlockElement {
    protected BlockElement() {
    }

    @Override // com.itextpdf.layout.ElementPropertyContainer, com.itextpdf.layout.IPropertyContainer
    public <T1> T1 getDefaultProperty(int i) {
        if (i == 103 || i == 104) {
            return (T1) OverflowPropertyValue.FIT;
        }
        return (T1) super.getDefaultProperty(i);
    }

    public UnitValue getMarginLeft() {
        return (UnitValue) getProperty(44);
    }

    public T setMarginLeft(float f) {
        setProperty(44, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginRight() {
        return (UnitValue) getProperty(45);
    }

    public T setMarginRight(float f) {
        setProperty(45, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginTop() {
        return (UnitValue) getProperty(46);
    }

    public T setMarginTop(float f) {
        setProperty(46, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getMarginBottom() {
        return (UnitValue) getProperty(43);
    }

    public T setMarginBottom(float f) {
        setProperty(43, UnitValue.createPointValue(f));
        return this;
    }

    public T setMargin(float f) {
        return (T) setMargins(f, f, f, f);
    }

    public T setMargins(float f, float f2, float f3, float f4) {
        setMarginTop(f);
        setMarginRight(f2);
        setMarginBottom(f3);
        setMarginLeft(f4);
        return this;
    }

    public UnitValue getPaddingLeft() {
        return (UnitValue) getProperty(48);
    }

    public T setPaddingLeft(float f) {
        setProperty(48, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingRight() {
        return (UnitValue) getProperty(49);
    }

    public T setPaddingRight(float f) {
        setProperty(49, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingTop() {
        return (UnitValue) getProperty(50);
    }

    public T setPaddingTop(float f) {
        setProperty(50, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getPaddingBottom() {
        return (UnitValue) getProperty(47);
    }

    public T setPaddingBottom(float f) {
        setProperty(47, UnitValue.createPointValue(f));
        return this;
    }

    public T setPadding(float f) {
        return (T) setPaddings(f, f, f, f);
    }

    public T setPaddings(float f, float f2, float f3, float f4) {
        setPaddingTop(f);
        setPaddingRight(f2);
        setPaddingBottom(f3);
        setPaddingLeft(f4);
        return this;
    }

    public T setVerticalAlignment(VerticalAlignment verticalAlignment) {
        setProperty(75, verticalAlignment);
        return this;
    }

    public T setSpacingRatio(float f) {
        setProperty(61, Float.valueOf(f));
        return this;
    }

    public Boolean isKeepTogether() {
        return (Boolean) getProperty(32);
    }

    public T setKeepTogether(boolean z) {
        setProperty(32, Boolean.valueOf(z));
        return this;
    }

    public Boolean isKeepWithNext() {
        return (Boolean) getProperty(81);
    }

    public T setKeepWithNext(boolean z) {
        setProperty(81, Boolean.valueOf(z));
        return this;
    }

    public T setRotationAngle(float f) {
        setProperty(55, Float.valueOf(f));
        return this;
    }

    public T setRotationAngle(double d) {
        setProperty(55, Float.valueOf((float) d));
        return this;
    }

    public T setWidth(float f) {
        setProperty(77, UnitValue.createPointValue(f));
        return this;
    }

    public T setWidth(UnitValue unitValue) {
        setProperty(77, unitValue);
        return this;
    }

    public UnitValue getWidth() {
        return (UnitValue) getProperty(77);
    }

    public T setHeight(UnitValue unitValue) {
        setProperty(27, unitValue);
        return this;
    }

    public T setHeight(float f) {
        setProperty(27, UnitValue.createPointValue(f));
        return this;
    }

    public UnitValue getHeight() {
        return (UnitValue) getProperty(27);
    }

    public T setMaxHeight(float f) {
        setProperty(84, UnitValue.createPointValue(f));
        return this;
    }

    public T setMaxHeight(UnitValue unitValue) {
        setProperty(84, unitValue);
        return this;
    }

    public T setMinHeight(UnitValue unitValue) {
        setProperty(85, unitValue);
        return this;
    }

    public T setMinHeight(float f) {
        setProperty(85, UnitValue.createPointValue(f));
        return this;
    }

    public T setMaxWidth(UnitValue unitValue) {
        setProperty(79, unitValue);
        return this;
    }

    public T setMaxWidth(float f) {
        setProperty(79, UnitValue.createPointValue(f));
        return this;
    }

    public T setMinWidth(UnitValue unitValue) {
        setProperty(80, unitValue);
        return this;
    }

    public T setMinWidth(float f) {
        setProperty(80, UnitValue.createPointValue(f));
        return this;
    }

    public T setNeutralRole() {
        getAccessibilityProperties().setRole(null);
        return this;
    }
}
