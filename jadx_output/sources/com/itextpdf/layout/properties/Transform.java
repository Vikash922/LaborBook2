package com.itextpdf.layout.properties;

import com.itextpdf.kernel.geom.AffineTransform;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class Transform {
    private List<SingleTransform> multipleTransform;

    public Transform(int i) {
        this.multipleTransform = new ArrayList(i);
    }

    public void addSingleTransform(SingleTransform singleTransform) {
        this.multipleTransform.add(singleTransform);
    }

    private List<SingleTransform> getMultipleTransform() {
        return this.multipleTransform;
    }

    public static AffineTransform getAffineTransform(Transform transform, float f, float f2) {
        float value;
        List<SingleTransform> multipleTransform = transform.getMultipleTransform();
        AffineTransform affineTransform = new AffineTransform();
        for (int size = multipleTransform.size() - 1; size >= 0; size--) {
            SingleTransform singleTransform = multipleTransform.get(size);
            float[] fArr = new float[6];
            for (int i = 0; i < 4; i++) {
                fArr[i] = singleTransform.getFloats()[i];
            }
            int i2 = 4;
            while (i2 < 6) {
                int i3 = i2 - 4;
                if (singleTransform.getUnitValues()[i3].getUnitType() == 1) {
                    value = singleTransform.getUnitValues()[i3].getValue();
                } else {
                    value = (singleTransform.getUnitValues()[i3].getValue() / 100.0f) * (i2 == 4 ? f : f2);
                }
                fArr[i2] = value;
                i2++;
            }
            affineTransform.preConcatenate(new AffineTransform(fArr));
        }
        return affineTransform;
    }

    public static class SingleTransform {

        /* JADX INFO: renamed from: a */
        private float f3223a;

        /* JADX INFO: renamed from: b */
        private float f3224b;

        /* JADX INFO: renamed from: c */
        private float f3225c;

        /* JADX INFO: renamed from: d */
        private float f3226d;

        /* JADX INFO: renamed from: tx */
        private UnitValue f3227tx;

        /* JADX INFO: renamed from: ty */
        private UnitValue f3228ty;

        public SingleTransform() {
            this.f3223a = 1.0f;
            this.f3224b = 0.0f;
            this.f3225c = 0.0f;
            this.f3226d = 1.0f;
            this.f3227tx = new UnitValue(1, 0.0f);
            this.f3228ty = new UnitValue(1, 0.0f);
        }

        public SingleTransform(float f, float f2, float f3, float f4, UnitValue unitValue, UnitValue unitValue2) {
            this.f3223a = f;
            this.f3224b = f2;
            this.f3225c = f3;
            this.f3226d = f4;
            this.f3227tx = unitValue;
            this.f3228ty = unitValue2;
        }

        public float[] getFloats() {
            return new float[]{this.f3223a, this.f3224b, this.f3225c, this.f3226d};
        }

        public UnitValue[] getUnitValues() {
            return new UnitValue[]{this.f3227tx, this.f3228ty};
        }
    }
}
