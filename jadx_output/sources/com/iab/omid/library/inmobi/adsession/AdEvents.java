package com.iab.omid.library.inmobi.adsession;

import com.iab.omid.library.inmobi.adsession.media.VastProperties;
import com.iab.omid.library.inmobi.utils.C2654g;

/* JADX INFO: loaded from: classes6.dex */
public final class AdEvents {
    private final C2623a adSession;

    private AdEvents(C2623a c2623a) {
        this.adSession = c2623a;
    }

    public static AdEvents createAdEvents(AdSession adSession) {
        C2623a c2623a = (C2623a) adSession;
        C2654g.m723a(adSession, "AdSession is null");
        C2654g.m731g(c2623a);
        C2654g.m726b(c2623a);
        AdEvents adEvents = new AdEvents(c2623a);
        c2623a.getAdSessionStatePublisher().m660a(adEvents);
        return adEvents;
    }

    public void impressionOccurred() {
        C2654g.m726b(this.adSession);
        C2654g.m729e(this.adSession);
        if (!this.adSession.m552f()) {
            try {
                this.adSession.start();
            } catch (Exception unused) {
            }
        }
        if (this.adSession.m552f()) {
            this.adSession.m557k();
        }
    }

    public void loaded() {
        C2654g.m722a(this.adSession);
        C2654g.m729e(this.adSession);
        this.adSession.m558l();
    }

    public void loaded(VastProperties vastProperties) {
        C2654g.m723a(vastProperties, "VastProperties is null");
        C2654g.m722a(this.adSession);
        C2654g.m729e(this.adSession);
        this.adSession.m548a(vastProperties.m559a());
    }
}
