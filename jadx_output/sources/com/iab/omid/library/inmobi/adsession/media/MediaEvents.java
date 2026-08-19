package com.iab.omid.library.inmobi.adsession.media;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.login.LoginLogger;
import com.iab.omid.library.inmobi.adsession.AdSession;
import com.iab.omid.library.inmobi.adsession.C2623a;
import com.iab.omid.library.inmobi.internal.C2639i;
import com.iab.omid.library.inmobi.utils.C2650c;
import com.iab.omid.library.inmobi.utils.C2654g;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class MediaEvents {
    private final C2623a adSession;

    private MediaEvents(C2623a c2623a) {
        this.adSession = c2623a;
    }

    private void confirmValidDuration(float f) {
        if (f <= 0.0f) {
            throw new IllegalArgumentException("Invalid Media duration");
        }
    }

    private void confirmValidVolume(float f) {
        if (f < 0.0f || f > 1.0f) {
            throw new IllegalArgumentException("Invalid Media volume");
        }
    }

    public static MediaEvents createMediaEvents(AdSession adSession) {
        C2623a c2623a = (C2623a) adSession;
        C2654g.m723a(adSession, "AdSession is null");
        C2654g.m730f(c2623a);
        C2654g.m727c(c2623a);
        C2654g.m726b(c2623a);
        C2654g.m732h(c2623a);
        MediaEvents mediaEvents = new MediaEvents(c2623a);
        c2623a.getAdSessionStatePublisher().m665a(mediaEvents);
        return mediaEvents;
    }

    public void adUserInteraction(InteractionType interactionType) {
        C2654g.m723a(interactionType, "InteractionType is null");
        C2654g.m722a(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2650c.m698a(jSONObject, "interactionType", interactionType);
        this.adSession.getAdSessionStatePublisher().m668a("adUserInteraction", jSONObject);
    }

    public void bufferFinish() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("bufferFinish");
    }

    public void bufferStart() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("bufferStart");
    }

    public void complete() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("complete");
    }

    public void firstQuartile() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("firstQuartile");
    }

    public void midpoint() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("midpoint");
    }

    public void pause() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("pause");
    }

    public void playerStateChange(PlayerState playerState) {
        C2654g.m723a(playerState, "PlayerState is null");
        C2654g.m722a(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2650c.m698a(jSONObject, "state", playerState);
        this.adSession.getAdSessionStatePublisher().m668a("playerStateChange", jSONObject);
    }

    public void resume() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("resume");
    }

    public void skipped() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a(LoginLogger.EVENT_PARAM_METHOD_RESULT_SKIPPED);
    }

    public void start(float f, float f2) {
        confirmValidDuration(f);
        confirmValidVolume(f2);
        C2654g.m722a(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2650c.m698a(jSONObject, TypedValues.TransitionType.S_DURATION, Float.valueOf(f));
        C2650c.m698a(jSONObject, "mediaPlayerVolume", Float.valueOf(f2));
        C2650c.m698a(jSONObject, "deviceVolume", Float.valueOf(C2639i.m638c().m640b()));
        this.adSession.getAdSessionStatePublisher().m668a("start", jSONObject);
    }

    public void thirdQuartile() {
        C2654g.m722a(this.adSession);
        this.adSession.getAdSessionStatePublisher().m666a("thirdQuartile");
    }

    public void volumeChange(float f) {
        confirmValidVolume(f);
        C2654g.m722a(this.adSession);
        JSONObject jSONObject = new JSONObject();
        C2650c.m698a(jSONObject, "mediaPlayerVolume", Float.valueOf(f));
        C2650c.m698a(jSONObject, "deviceVolume", Float.valueOf(C2639i.m638c().m640b()));
        this.adSession.getAdSessionStatePublisher().m668a("volumeChange", jSONObject);
    }
}
