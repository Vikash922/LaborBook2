package com.inmobi.media;

import android.view.MotionEvent;
import java.util.Collection;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.json.JSONArray;
import org.json.JSONException;

/* JADX INFO: renamed from: com.inmobi.media.Z6 */
/* JADX INFO: loaded from: classes6.dex */
public final class C3059Z6 {

    /* JADX INFO: renamed from: a */
    public final GestureDetectorOnGestureListenerC3049Ya f1806a;

    /* JADX INFO: renamed from: b */
    public final String f1807b;

    /* JADX INFO: renamed from: c */
    public float f1808c;

    /* JADX INFO: renamed from: d */
    public float f1809d;

    /* JADX INFO: renamed from: e */
    public float f1810e;

    /* JADX INFO: renamed from: f */
    public float f1811f;

    /* JADX INFO: renamed from: g */
    public int f1812g;

    /* JADX INFO: renamed from: h */
    public int f1813h;

    /* JADX INFO: renamed from: i */
    public float f1814i;

    /* JADX INFO: renamed from: j */
    public JSONArray f1815j;

    /* JADX INFO: renamed from: k */
    public MotionEvent f1816k;

    /* JADX INFO: renamed from: l */
    public int f1817l;

    public C3059Z6(GestureDetectorOnGestureListenerC3049Ya mListener) {
        Intrinsics.checkNotNullParameter(mListener, "mListener");
        this.f1806a = mListener;
        this.f1807b = "Z6";
        this.f1817l = Integer.MAX_VALUE;
        this.f1812g = -1;
        this.f1813h = -1;
    }

    /* JADX INFO: renamed from: a */
    public final void m2003a(MotionEvent endEvent) {
        float y;
        float x;
        float f;
        String str;
        Intrinsics.checkNotNullParameter(endEvent, "event");
        int actionMasked = endEvent.getActionMasked();
        if (actionMasked == 0) {
            String TAG = this.f1807b;
            Intrinsics.checkNotNullExpressionValue(TAG, "TAG");
            endEvent.toString();
            this.f1812g = endEvent.getPointerId(endEvent.getActionIndex());
            this.f1815j = new JSONArray();
            JSONArray jSONArray = new JSONArray((Collection) CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(AbstractC3429y2.m2610c(endEvent.getX())), Integer.valueOf(AbstractC3429y2.m2610c(endEvent.getY()))}));
            JSONArray jSONArray2 = this.f1815j;
            if (jSONArray2 != null) {
                jSONArray2.put(jSONArray);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            String TAG2 = this.f1807b;
            Intrinsics.checkNotNullExpressionValue(TAG2, "TAG");
            endEvent.toString();
            this.f1812g = -1;
            JSONArray jSONArray3 = this.f1815j;
            if (jSONArray3 == null || jSONArray3.length() <= 5) {
                return;
            }
            GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya = this.f1806a;
            Intrinsics.checkNotNullParameter(this, "movementGestureDetector");
            if (gestureDetectorOnGestureListenerC3049Ya.getRenderingConfig().getSupportedGestures().contains(2)) {
                InterfaceC3147f5 interfaceC3147f5 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                if (interfaceC3147f5 != null) {
                    String str2 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    StringBuilder sbM2261a = AbstractC3208j6.m2261a(str2, "TAG", "onPanDetected\n ");
                    JSONArray jSONArray4 = this.f1815j;
                    ((C3162g5) interfaceC3147f5).m2147a(str2, StringsKt.trimIndent(sbM2261a.append(jSONArray4 != null ? Integer.valueOf(jSONArray4.length()) : null).append(" \n ").append(this.f1815j).toString()));
                }
                gestureDetectorOnGestureListenerC3049Ya.m1960b("window.imraidview.onGestureDetected('2', '" + this.f1815j + "');");
            } else {
                InterfaceC3147f5 interfaceC3147f52 = gestureDetectorOnGestureListenerC3049Ya.f1749i;
                if (interfaceC3147f52 != null) {
                    String TAG3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                    Intrinsics.checkNotNullExpressionValue(TAG3, "TAG");
                    ((C3162g5) interfaceC3147f52).m2152c(TAG3, "Pan gesture is disabled from config");
                }
            }
            this.f1815j = new JSONArray();
            return;
        }
        if (actionMasked == 2) {
            float y2 = 0.0f;
            JSONArray jSONArray5 = this.f1815j;
            int i = this.f1812g;
            if (i == -1 || this.f1813h == -1) {
                if (i == -1 || jSONArray5 == null || jSONArray5.length() <= 0 || jSONArray5.length() >= 50) {
                    return;
                }
                try {
                    int iM2610c = AbstractC3429y2.m2610c(endEvent.getX());
                    int iM2610c2 = AbstractC3429y2.m2610c(endEvent.getY());
                    JSONArray jSONArray6 = jSONArray5.getJSONArray(jSONArray5.length() - 1);
                    JSONArray jSONArray7 = new JSONArray((Collection) CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(iM2610c), Integer.valueOf(iM2610c2)}));
                    float f2 = jSONArray6.getInt(0) - jSONArray7.getInt(0);
                    float f3 = jSONArray6.getInt(1) - jSONArray7.getInt(1);
                    if (((int) Math.sqrt((f3 * f3) + (f2 * f2))) > 100) {
                        jSONArray5.put(jSONArray7);
                        return;
                    }
                    return;
                } catch (JSONException unused) {
                    return;
                }
            }
            int iFindPointerIndex = endEvent.findPointerIndex(i);
            int iFindPointerIndex2 = endEvent.findPointerIndex(this.f1813h);
            if (iFindPointerIndex >= 0) {
                x = endEvent.getX(iFindPointerIndex);
                y = endEvent.getY(iFindPointerIndex);
            } else {
                C3402w5 c3402w5 = C3402w5.f2709a;
                C3114d2 event = new C3114d2(new IllegalArgumentException("Index for mPtrID1=" + this.f1812g + " is " + iFindPointerIndex + " | Pointer count=" + endEvent.getPointerCount()));
                Intrinsics.checkNotNullParameter(event, "event");
                C3402w5.f2712d.m2158a(event);
                y = 0.0f;
                x = 0.0f;
            }
            if (iFindPointerIndex2 >= 0) {
                float x2 = endEvent.getX(iFindPointerIndex2);
                y2 = endEvent.getY(iFindPointerIndex2);
                f = x2;
            } else {
                C3402w5 c3402w52 = C3402w5.f2709a;
                C3114d2 event2 = new C3114d2(new IllegalArgumentException("Index for mPtrID1=" + this.f1813h + " is " + iFindPointerIndex2 + " | Pointer count=" + endEvent.getPointerCount()));
                Intrinsics.checkNotNullParameter(event2, "event");
                C3402w5.f2712d.m2158a(event2);
                f = 0.0f;
            }
            float degrees = ((float) Math.toDegrees(((float) Math.atan2(this.f1809d - this.f1811f, this.f1808c - this.f1810e)) - ((float) Math.atan2(y2 - y, f - x)))) % 360;
            if (degrees < -180.0f) {
                degrees += 360.0f;
            }
            if (degrees > 180.0f) {
                degrees -= 360.0f;
            }
            this.f1814i = Math.abs(degrees);
            return;
        }
        if (actionMasked == 3) {
            String TAG4 = this.f1807b;
            Intrinsics.checkNotNullExpressionValue(TAG4, "TAG");
            endEvent.toString();
            this.f1812g = -1;
            this.f1813h = -1;
            return;
        }
        if (actionMasked == 5) {
            String TAG5 = this.f1807b;
            Intrinsics.checkNotNullExpressionValue(TAG5, "TAG");
            endEvent.toString();
            this.f1813h = endEvent.getPointerId(endEvent.getActionIndex());
            this.f1816k = MotionEvent.obtain(endEvent);
            int iFindPointerIndex3 = endEvent.findPointerIndex(this.f1812g);
            int iFindPointerIndex4 = endEvent.findPointerIndex(this.f1813h);
            if (iFindPointerIndex3 >= 0) {
                this.f1810e = endEvent.getX(iFindPointerIndex3);
                this.f1811f = endEvent.getY(iFindPointerIndex3);
            } else {
                C3402w5 c3402w53 = C3402w5.f2709a;
                C3114d2 event3 = new C3114d2(new IllegalArgumentException("Index for mPtrID1=" + this.f1812g + " is " + iFindPointerIndex3 + " | Pointer count=" + endEvent.getPointerCount()));
                Intrinsics.checkNotNullParameter(event3, "event");
                C3402w5.f2712d.m2158a(event3);
            }
            if (iFindPointerIndex4 >= 0) {
                this.f1808c = endEvent.getX(iFindPointerIndex4);
                this.f1809d = endEvent.getY(iFindPointerIndex4);
            } else {
                C3402w5 c3402w54 = C3402w5.f2709a;
                C3114d2 event4 = new C3114d2(new IllegalArgumentException("Index for mPtrID2=" + this.f1813h + " is " + iFindPointerIndex4 + " | Pointer count=" + endEvent.getPointerCount()));
                Intrinsics.checkNotNullParameter(event4, "event");
                C3402w5.f2712d.m2158a(event4);
            }
            float f4 = this.f1810e - this.f1808c;
            float f5 = this.f1811f - this.f1809d;
            this.f1817l = (int) Math.sqrt((f5 * f5) + (f4 * f4));
            return;
        }
        if (actionMasked != 6) {
            return;
        }
        String TAG6 = this.f1807b;
        Intrinsics.checkNotNullExpressionValue(TAG6, "TAG");
        endEvent.toString();
        this.f1813h = -1;
        if (this.f1814i > 30.0f) {
            MotionEvent initialEvent = this.f1816k;
            if (initialEvent != null) {
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya2 = this.f1806a;
                Intrinsics.checkNotNullParameter(this, "movementGestureDetector");
                Intrinsics.checkNotNullParameter(initialEvent, "initialEvent");
                Intrinsics.checkNotNullParameter(endEvent, "endEvent");
                if (gestureDetectorOnGestureListenerC3049Ya2.getRenderingConfig().getSupportedGestures().contains(3)) {
                    InterfaceC3147f5 interfaceC3147f53 = gestureDetectorOnGestureListenerC3049Ya2.f1749i;
                    if (interfaceC3147f53 != null) {
                        String str3 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        ((C3162g5) interfaceC3147f53).m2147a(str3, StringsKt.trimIndent(AbstractC3208j6.m2261a(str3, "TAG", " Rotation detected ").append(this.f1814i).append(" \n ").append(initialEvent).append(" \n ").append(endEvent).toString()));
                    }
                    JSONArray jSONArray8 = new JSONArray();
                    str = " \n ";
                    jSONArray8.put(new JSONArray((Collection) CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(AbstractC3429y2.m2610c(initialEvent.getX())), Integer.valueOf(AbstractC3429y2.m2610c(initialEvent.getY()))})));
                    jSONArray8.put(new JSONArray((Collection) CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(AbstractC3429y2.m2610c(initialEvent.getX(1))), Integer.valueOf(AbstractC3429y2.m2610c(initialEvent.getY(1)))})));
                    jSONArray8.put(new JSONArray((Collection) CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(AbstractC3429y2.m2610c(endEvent.getX())), Integer.valueOf(AbstractC3429y2.m2610c(endEvent.getY()))})));
                    jSONArray8.put(new JSONArray((Collection) CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(AbstractC3429y2.m2610c(endEvent.getX(1))), Integer.valueOf(AbstractC3429y2.m2610c(endEvent.getY(1)))})));
                    gestureDetectorOnGestureListenerC3049Ya2.m1960b("window.imraidview.onGestureDetected('3', '" + jSONArray8 + "');");
                    this.f1814i = 0.0f;
                } else {
                    InterfaceC3147f5 interfaceC3147f54 = gestureDetectorOnGestureListenerC3049Ya2.f1749i;
                    if (interfaceC3147f54 != null) {
                        String TAG7 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        Intrinsics.checkNotNullExpressionValue(TAG7, "TAG");
                        ((C3162g5) interfaceC3147f54).m2152c(TAG7, "Rotation gesture is disabled from config");
                    }
                    str = " \n ";
                    this.f1814i = 0.0f;
                }
            } else {
                str = " \n ";
                this.f1814i = 0.0f;
            }
        } else {
            str = " \n ";
        }
        float x3 = endEvent.getX() - endEvent.getX(1);
        float y3 = endEvent.getY() - endEvent.getY(1);
        if (Math.abs(((int) Math.sqrt((y3 * y3) + (x3 * x3))) - this.f1817l) > 500) {
            MotionEvent initialEvent2 = this.f1816k;
            if (initialEvent2 != null) {
                GestureDetectorOnGestureListenerC3049Ya gestureDetectorOnGestureListenerC3049Ya3 = this.f1806a;
                Intrinsics.checkNotNullParameter(this, "movementGestureDetector");
                Intrinsics.checkNotNullParameter(initialEvent2, "initialEvent");
                Intrinsics.checkNotNullParameter(endEvent, "endEvent");
                if (gestureDetectorOnGestureListenerC3049Ya3.getRenderingConfig().getSupportedGestures().contains(4)) {
                    InterfaceC3147f5 interfaceC3147f55 = gestureDetectorOnGestureListenerC3049Ya3.f1749i;
                    if (interfaceC3147f55 != null) {
                        String TAG8 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        Intrinsics.checkNotNullExpressionValue(TAG8, "TAG");
                        ((C3162g5) interfaceC3147f55).m2147a(TAG8, StringsKt.trimIndent(" onScaleDetected\n " + initialEvent2 + str + endEvent));
                    }
                    JSONArray jSONArray9 = new JSONArray();
                    float f6 = 2;
                    jSONArray9.put(new JSONArray((Collection) CollectionsKt.listOf((Object[]) new Integer[]{Integer.valueOf(AbstractC3429y2.m2610c((endEvent.getX(1) + endEvent.getX()) / f6)), Integer.valueOf(AbstractC3429y2.m2610c((endEvent.getY(1) + endEvent.getY()) / f6))})));
                    gestureDetectorOnGestureListenerC3049Ya3.m1960b("window.imraidview.onGestureDetected('4', '" + jSONArray9 + "');");
                } else {
                    InterfaceC3147f5 interfaceC3147f56 = gestureDetectorOnGestureListenerC3049Ya3.f1749i;
                    if (interfaceC3147f56 != null) {
                        String TAG9 = GestureDetectorOnGestureListenerC3049Ya.f1696P0;
                        Intrinsics.checkNotNullExpressionValue(TAG9, "TAG");
                        ((C3162g5) interfaceC3147f56).m2152c(TAG9, "Pinch gesture is disabled from config");
                    }
                }
            }
            this.f1817l = Integer.MAX_VALUE;
        }
    }
}
