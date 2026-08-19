package com.inmobi.media;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.TextView;

/* JADX INFO: loaded from: classes6.dex */
public final class P8 extends TextView {
    public P8(Context context) {
        super(context);
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        int lineHeight = getLineHeight() > 0 ? i2 / getLineHeight() : 0;
        if (lineHeight > 0) {
            setSingleLine(false);
            setLines(lineHeight);
        }
        if (lineHeight == 1) {
            setSingleLine();
        }
    }

    @Override // android.widget.TextView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        return false;
    }
}
