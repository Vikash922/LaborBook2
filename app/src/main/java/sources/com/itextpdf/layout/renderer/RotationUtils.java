package com.itextpdf.layout.renderer;

import com.itextpdf.kernel.geom.Rectangle;
import com.itextpdf.layout.layout.LayoutArea;
import com.itextpdf.layout.layout.LayoutContext;
import com.itextpdf.layout.layout.LayoutResult;
import com.itextpdf.layout.minmaxwidth.MinMaxWidth;
import com.itextpdf.layout.minmaxwidth.MinMaxWidthUtils;
import com.itextpdf.layout.minmaxwidth.RotationMinMaxWidth;
import java.util.HashMap;

/* JADX INFO: loaded from: classes6.dex */
final class RotationUtils {
    private RotationUtils() {
    }

    public static MinMaxWidth countRotationMinMaxWidth(MinMaxWidth minMaxWidth, AbstractRenderer abstractRenderer) {
        PropertiesBackup propertiesBackup = new PropertiesBackup(abstractRenderer);
        Float fStoreFloatProperty = propertiesBackup.storeFloatProperty(55);
        if (fStoreFloatProperty != null) {
            float fFloatValue = fStoreFloatProperty.floatValue();
            LayoutResult layoutResultLayout = abstractRenderer.layout(new LayoutContext(new LayoutArea(1, new Rectangle(minMaxWidth.getMaxWidth() + MinMaxWidthUtils.getEps(), 1000000.0f))));
            if (layoutResultLayout.getOccupiedArea() != null) {
                Rectangle bBox = layoutResultLayout.getOccupiedArea().getBBox();
                if (MinMaxWidthUtils.isEqual(minMaxWidth.getMinWidth(), minMaxWidth.getMaxWidth())) {
                    propertiesBackup.restoreProperty(55);
                    float fCalculateRotatedWidth = (float) RotationMinMaxWidth.calculateRotatedWidth(bBox, fFloatValue);
                    return new MinMaxWidth(fCalculateRotatedWidth, fCalculateRotatedWidth, 0.0f);
                }
                double d = fFloatValue;
                RotationMinMaxWidth rotationMinMaxWidthCalculate = RotationMinMaxWidth.calculate(d, layoutResultLayout.getOccupiedArea().getBBox().getWidth() * layoutResultLayout.getOccupiedArea().getBBox().getHeight(), minMaxWidth);
                Float layoutRotatedWidth = getLayoutRotatedWidth(abstractRenderer, (float) rotationMinMaxWidthCalculate.getMinWidthOrigin(), bBox, d);
                if (layoutRotatedWidth != null) {
                    if (layoutRotatedWidth.floatValue() > rotationMinMaxWidthCalculate.getMaxWidth()) {
                        rotationMinMaxWidthCalculate.setChildrenMinWidth(layoutRotatedWidth.floatValue());
                        Float layoutRotatedWidth2 = getLayoutRotatedWidth(abstractRenderer, (float) rotationMinMaxWidthCalculate.getMaxWidthOrigin(), bBox, d);
                        if (layoutRotatedWidth2 != null && layoutRotatedWidth2.floatValue() > layoutRotatedWidth.floatValue()) {
                            rotationMinMaxWidthCalculate.setChildrenMaxWidth(layoutRotatedWidth2.floatValue());
                        } else {
                            rotationMinMaxWidthCalculate.setChildrenMaxWidth(layoutRotatedWidth.floatValue());
                        }
                    } else {
                        rotationMinMaxWidthCalculate.setChildrenMinWidth(layoutRotatedWidth.floatValue());
                    }
                    propertiesBackup.restoreProperty(55);
                    return rotationMinMaxWidthCalculate;
                }
            }
        }
        propertiesBackup.restoreProperty(55);
        return minMaxWidth;
    }

    public static Float retrieveRotatedLayoutWidth(float f, AbstractRenderer abstractRenderer) {
        PropertiesBackup propertiesBackup = new PropertiesBackup(abstractRenderer);
        Float fStoreFloatProperty = propertiesBackup.storeFloatProperty(55);
        if (fStoreFloatProperty != null && abstractRenderer.getProperty(77) == null) {
            float fFloatValue = fStoreFloatProperty.floatValue();
            propertiesBackup.storeProperty(27);
            propertiesBackup.storeProperty(85);
            propertiesBackup.storeProperty(84);
            propertiesBackup.storeBoolProperty(26);
            MinMaxWidth minMaxWidth = abstractRenderer.getMinMaxWidth();
            LayoutResult layoutResultLayout = abstractRenderer.layout(new LayoutContext(new LayoutArea(1, new Rectangle(((minMaxWidth.getMaxWidth() + minMaxWidth.getMinWidth()) / 2.0f) + MinMaxWidthUtils.getEps(), 1000000.0f))));
            propertiesBackup.restoreProperty(27);
            propertiesBackup.restoreProperty(85);
            propertiesBackup.restoreProperty(84);
            propertiesBackup.restoreProperty(26);
            Rectangle rectangle = new Rectangle(0.0f, 0.0f);
            abstractRenderer.applyPaddings(rectangle, true);
            abstractRenderer.applyBorderBox(rectangle, true);
            abstractRenderer.applyMargins(rectangle, true);
            if (layoutResultLayout.getOccupiedArea() != null) {
                RotationMinMaxWidth rotationMinMaxWidthCalculate = RotationMinMaxWidth.calculate(fFloatValue, layoutResultLayout.getOccupiedArea().getBBox().getWidth() * layoutResultLayout.getOccupiedArea().getBBox().getHeight(), minMaxWidth, f);
                if (rotationMinMaxWidthCalculate != null) {
                    propertiesBackup.restoreProperty(55);
                    if (rotationMinMaxWidthCalculate.getMaxWidthHeight() > rotationMinMaxWidthCalculate.getMinWidthHeight()) {
                        return Float.valueOf((float) ((rotationMinMaxWidthCalculate.getMinWidthOrigin() - ((double) rectangle.getWidth())) + ((double) MinMaxWidthUtils.getEps())));
                    }
                    return Float.valueOf((float) ((rotationMinMaxWidthCalculate.getMaxWidthOrigin() - ((double) rectangle.getWidth())) + ((double) MinMaxWidthUtils.getEps())));
                }
            }
        }
        propertiesBackup.restoreProperty(55);
        return abstractRenderer.retrieveWidth(f);
    }

    private static Float getLayoutRotatedWidth(AbstractRenderer abstractRenderer, float f, Rectangle rectangle, double d) {
        if (MinMaxWidthUtils.isEqual(f, rectangle.getWidth())) {
            return Float.valueOf((float) RotationMinMaxWidth.calculateRotatedWidth(rectangle, d));
        }
        LayoutResult layoutResultLayout = abstractRenderer.layout(new LayoutContext(new LayoutArea(1, new Rectangle(f + MinMaxWidthUtils.getEps(), 1000000.0f))));
        if (layoutResultLayout.getOccupiedArea() != null) {
            return Float.valueOf((float) RotationMinMaxWidth.calculateRotatedWidth(layoutResultLayout.getOccupiedArea().getBBox(), d));
        }
        return null;
    }

    private static class PropertiesBackup {
        private HashMap<Integer, PropertyBackup> propertiesBackup = new HashMap<>();
        private AbstractRenderer renderer;

        public PropertiesBackup(AbstractRenderer abstractRenderer) {
            this.renderer = abstractRenderer;
        }

        public Float storeFloatProperty(int i) {
            Float propertyAsFloat = this.renderer.getPropertyAsFloat(i);
            if (propertyAsFloat != null) {
                this.propertiesBackup.put(Integer.valueOf(i), new PropertyBackup(propertyAsFloat, this.renderer.hasOwnProperty(i)));
                this.renderer.setProperty(i, null);
            }
            return propertyAsFloat;
        }

        public Boolean storeBoolProperty(int i) {
            Boolean propertyAsBoolean = this.renderer.getPropertyAsBoolean(i);
            if (propertyAsBoolean != null) {
                this.propertiesBackup.put(Integer.valueOf(i), new PropertyBackup(propertyAsBoolean, this.renderer.hasOwnProperty(i)));
                this.renderer.setProperty(i, null);
            }
            return propertyAsBoolean;
        }

        public <T> T storeProperty(int i) {
            T t = (T) this.renderer.getProperty(i);
            if (t != null) {
                this.propertiesBackup.put(Integer.valueOf(i), new PropertyBackup(t, this.renderer.hasOwnProperty(i)));
                this.renderer.setProperty(i, null);
            }
            return t;
        }

        public void restoreProperty(int i) {
            PropertyBackup propertyBackupRemove = this.propertiesBackup.remove(Integer.valueOf(i));
            if (propertyBackupRemove != null) {
                if (propertyBackupRemove.isOwnedByRender()) {
                    this.renderer.setProperty(i, propertyBackupRemove.getValue());
                } else {
                    this.renderer.deleteOwnProperty(i);
                }
            }
        }

        private static class PropertyBackup {
            private boolean isOwnedByRender;
            private Object propertyValue;

            public PropertyBackup(Object obj, boolean z) {
                this.propertyValue = obj;
                this.isOwnedByRender = z;
            }

            public Object getValue() {
                return this.propertyValue;
            }

            public boolean isOwnedByRender() {
                return this.isOwnedByRender;
            }
        }
    }
}
