package com.inmobi.media;

import android.media.MediaPlayer;
import java.util.HashMap;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes6.dex */
public final class J8 implements MediaPlayer.OnPreparedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ L8 f148a;

    public J8(L8 l8) {
        this.f148a = l8;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mp) {
        HashMap map;
        E8 e8;
        HashMap map2;
        HashMap map3;
        Intrinsics.checkNotNullParameter(mp, "mp");
        if (this.f148a.getMediaPlayer() == null) {
            return;
        }
        C0319g8 mediaPlayer = this.f148a.getMediaPlayer();
        if (mediaPlayer != null) {
            mediaPlayer.f360a = 2;
        }
        L8 l8 = this.f148a;
        l8.r = true;
        l8.q = true;
        l8.p = true;
        E8 e82 = l8.n;
        if (e82 != null) {
            e82.setEnabled(true);
        }
        this.f148a.e = mp.getVideoWidth();
        this.f148a.f = mp.getVideoHeight();
        Object tag = this.f148a.getTag();
        C8 c8 = tag instanceof C8 ? (C8) tag : null;
        int iIntValue = 0;
        if (c8 != null) {
            Object obj = c8.t.get("didCompleteQ4");
            Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlin.Boolean");
            if (((Boolean) obj).booleanValue()) {
                this.f148a.a(8, 0);
                Object obj2 = c8.t.get("placementType");
                Intrinsics.checkNotNull(obj2, "null cannot be cast to non-null type kotlin.Byte");
                if (((Byte) obj2).byteValue() == 1) {
                    return;
                }
            }
        }
        G8 playbackEventListener = this.f148a.getPlaybackEventListener();
        if (playbackEventListener != null) {
            ((C0224a8) playbackEventListener).a((byte) 0);
        }
        Object obj3 = (c8 == null || (map3 = c8.t) == null) ? null : map3.get("didCompleteQ4");
        if (Intrinsics.areEqual(obj3 instanceof Boolean ? (Boolean) obj3 : null, Boolean.FALSE)) {
            Object obj4 = c8.t.get("seekPosition");
            Intrinsics.checkNotNull(obj4, "null cannot be cast to non-null type kotlin.Int");
            iIntValue = ((Integer) obj4).intValue();
        }
        L8 l82 = this.f148a;
        if (l82.e == 0 || l82.f == 0) {
            C0319g8 mediaPlayer2 = l82.getMediaPlayer();
            if (mediaPlayer2 == null || 3 != mediaPlayer2.b) {
                return;
            }
            Object obj5 = (c8 == null || (map = c8.t) == null) ? null : map.get("isFullScreen");
            if (Intrinsics.areEqual(obj5 instanceof Boolean ? (Boolean) obj5 : null, Boolean.TRUE)) {
                this.f148a.start();
                return;
            }
            return;
        }
        C0319g8 mediaPlayer3 = l82.getMediaPlayer();
        if (mediaPlayer3 == null || 3 != mediaPlayer3.b) {
            if (this.f148a.isPlaying()) {
                return;
            }
            if ((iIntValue != 0 || this.f148a.getCurrentPosition() > 0) && (e8 = this.f148a.n) != null) {
                e8.d();
                return;
            }
            return;
        }
        Object obj6 = (c8 == null || (map2 = c8.t) == null) ? null : map2.get("isFullScreen");
        if (Intrinsics.areEqual(obj6 instanceof Boolean ? (Boolean) obj6 : null, Boolean.TRUE)) {
            this.f148a.start();
        }
        E8 e83 = this.f148a.n;
        if (e83 != null) {
            e83.d();
        }
    }
}
