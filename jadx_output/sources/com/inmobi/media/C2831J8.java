package com.inmobi.media;

import android.media.MediaPlayer;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: renamed from: com.inmobi.media.J8 */
/* JADX INFO: loaded from: classes6.dex */
public final class C2831J8 implements MediaPlayer.OnPreparedListener {

    /* JADX INFO: renamed from: a */
    public final /* synthetic */ C2861L8 f1137a;

    public C2831J8(C2861L8 c2861l8) {
        this.f1137a = c2861l8;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mp) {
        HashMap map;
        C2756E8 c2756e8;
        HashMap map2;
        HashMap map3;
        Intrinsics.checkNotNullParameter(mp, "mp");
        if (this.f1137a.getMediaPlayer() == null) {
            return;
        }
        C3165g8 mediaPlayer = this.f1137a.getMediaPlayer();
        if (mediaPlayer != null) {
            mediaPlayer.f2107a = 2;
        }
        C2861L8 c2861l8 = this.f1137a;
        c2861l8.f1227r = true;
        c2861l8.f1226q = true;
        c2861l8.f1225p = true;
        C2756E8 c2756e82 = c2861l8.f1223n;
        if (c2756e82 != null) {
            c2756e82.setEnabled(true);
        }
        this.f1137a.f1214e = mp.getVideoWidth();
        this.f1137a.f1215f = mp.getVideoHeight();
        Object tag = this.f1137a.getTag();
        C2726C8 c2726c8 = tag instanceof C2726C8 ? (C2726C8) tag : null;
        int iIntValue = 0;
        if (c2726c8 != null) {
            Object obj = c2726c8.f938t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj).booleanValue()) {
                this.f1137a.m1300a(8, 0);
                Object obj2 = c2726c8.f938t.get("placementType");
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Byte");
                if (((Byte) obj2).byteValue() == 1) {
                    return;
                }
            }
        }
        InterfaceC2786G8 playbackEventListener = this.f1137a.getPlaybackEventListener();
        if (playbackEventListener != null) {
            ((C3075a8) playbackEventListener).m2017a((byte) 0);
        }
        Object obj3 = (c2726c8 == null || (map3 = c2726c8.f938t) == null) ? null : map3.get("didCompleteQ4");
        if (Intrinsics.areEqual(obj3 instanceof Boolean ? (Boolean) obj3 : null, Boolean.FALSE)) {
            Object obj4 = c2726c8.f938t.get("seekPosition");
            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Int");
            iIntValue = ((Integer) obj4).intValue();
        }
        C2861L8 c2861l82 = this.f1137a;
        if (c2861l82.f1214e == 0 || c2861l82.f1215f == 0) {
            C3165g8 mediaPlayer2 = c2861l82.getMediaPlayer();
            if (mediaPlayer2 == null || 3 != mediaPlayer2.f2108b) {
                return;
            }
            Object obj5 = (c2726c8 == null || (map = c2726c8.f938t) == null) ? null : map.get("isFullScreen");
            if (Intrinsics.areEqual(obj5 instanceof Boolean ? (Boolean) obj5 : null, Boolean.TRUE)) {
                this.f1137a.start();
                return;
            }
            return;
        }
        C3165g8 mediaPlayer3 = c2861l82.getMediaPlayer();
        if (mediaPlayer3 == null || 3 != mediaPlayer3.f2108b) {
            if (this.f1137a.isPlaying()) {
                return;
            }
            if ((iIntValue != 0 || this.f1137a.getCurrentPosition() > 0) && (c2756e8 = this.f1137a.f1223n) != null) {
                c2756e8.m1048d();
                return;
            }
            return;
        }
        Object obj6 = (c2726c8 == null || (map2 = c2726c8.f938t) == null) ? null : map2.get("isFullScreen");
        if (Intrinsics.areEqual(obj6 instanceof Boolean ? (Boolean) obj6 : null, Boolean.TRUE)) {
            this.f1137a.start();
        }
        C2756E8 c2756e83 = this.f1137a.f1223n;
        if (c2756e83 != null) {
            c2756e83.m1048d();
        }
    }
}
