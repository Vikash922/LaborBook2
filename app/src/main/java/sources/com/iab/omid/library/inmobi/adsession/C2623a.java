package com.iab.omid.library.inmobi.adsession;

import android.view.View;
import com.iab.omid.library.inmobi.internal.C2631a;
import com.iab.omid.library.inmobi.internal.C2633c;
import com.iab.omid.library.inmobi.internal.C2635e;
import com.iab.omid.library.inmobi.internal.C2636f;
import com.iab.omid.library.inmobi.internal.C2639i;
import com.iab.omid.library.inmobi.publisher.AdSessionStatePublisher;
import com.iab.omid.library.inmobi.publisher.C2646a;
import com.iab.omid.library.inmobi.publisher.C2647b;
import com.iab.omid.library.inmobi.utils.C2654g;
import com.iab.omid.library.inmobi.weakreference.C2669a;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.adsession.a */
/* JADX INFO: loaded from: classes6.dex */
public class C2623a extends AdSession {

    /* JADX INFO: renamed from: a */
    private final AdSessionContext f597a;

    /* JADX INFO: renamed from: b */
    private final AdSessionConfiguration f598b;

    /* JADX INFO: renamed from: c */
    private final C2636f f599c;

    /* JADX INFO: renamed from: d */
    private C2669a f600d;

    /* JADX INFO: renamed from: e */
    private AdSessionStatePublisher f601e;

    /* JADX INFO: renamed from: f */
    private boolean f602f;

    /* JADX INFO: renamed from: g */
    private boolean f603g;

    /* JADX INFO: renamed from: h */
    private final String f604h;

    /* JADX INFO: renamed from: i */
    private boolean f605i;

    /* JADX INFO: renamed from: j */
    private boolean f606j;

    /* JADX INFO: renamed from: k */
    private PossibleObstructionListener f607k;

    C2623a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext) {
        this(adSessionConfiguration, adSessionContext, UUID.randomUUID().toString());
    }

    C2623a(AdSessionConfiguration adSessionConfiguration, AdSessionContext adSessionContext, String str) {
        this.f599c = new C2636f();
        this.f602f = false;
        this.f603g = false;
        this.f598b = adSessionConfiguration;
        this.f597a = adSessionContext;
        this.f604h = str;
        m546b(null);
        this.f601e = (adSessionContext.getAdSessionContextType() == AdSessionContextType.HTML || adSessionContext.getAdSessionContextType() == AdSessionContextType.JAVASCRIPT) ? new C2646a(str, adSessionContext.getWebView()) : new C2647b(str, adSessionContext.getInjectedResourcesMap(), adSessionContext.getOmidJsScriptContent());
        this.f601e.mo681i();
        C2633c.m590c().m592a(this);
        this.f601e.m661a(adSessionConfiguration);
    }

    /* JADX INFO: renamed from: a */
    private void m543a() {
        if (this.f605i) {
            throw new IllegalStateException("Impression event can only be sent once");
        }
    }

    /* JADX INFO: renamed from: a */
    private void m544a(View view) {
        Collection<C2623a> collectionM593b = C2633c.m590c().m593b();
        if (collectionM593b == null || collectionM593b.isEmpty()) {
            return;
        }
        for (C2623a c2623a : collectionM593b) {
            if (c2623a != this && c2623a.m549c() == view) {
                c2623a.f600d.clear();
            }
        }
    }

    /* JADX INFO: renamed from: b */
    private void m545b() {
        if (this.f606j) {
            throw new IllegalStateException("Loaded event can only be sent once");
        }
    }

    /* JADX INFO: renamed from: b */
    private void m546b(View view) {
        this.f600d = new C2669a(view);
    }

    /* JADX INFO: renamed from: a */
    public void m547a(List<C2669a> list) {
        if (m551e()) {
            ArrayList arrayList = new ArrayList();
            Iterator<C2669a> it = list.iterator();
            while (it.hasNext()) {
                View view = it.next().get();
                if (view != null) {
                    arrayList.add(view);
                }
            }
            this.f607k.onPossibleObstructionsDetected(this.f604h, arrayList);
        }
    }

    /* JADX INFO: renamed from: a */
    void m548a(JSONObject jSONObject) {
        m545b();
        getAdSessionStatePublisher().m670a(jSONObject);
        this.f606j = true;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void addFriendlyObstruction(View view, FriendlyObstructionPurpose friendlyObstructionPurpose, String str) {
        if (this.f603g) {
            return;
        }
        this.f599c.m613a(view, friendlyObstructionPurpose, str);
    }

    /* JADX INFO: renamed from: c */
    public View m549c() {
        return this.f600d.get();
    }

    /* JADX INFO: renamed from: d */
    public List<C2635e> m550d() {
        return this.f599c.m612a();
    }

    /* JADX INFO: renamed from: e */
    public boolean m551e() {
        return this.f607k != null;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void error(ErrorType errorType, String str) {
        if (this.f603g) {
            throw new IllegalStateException("AdSession is finished");
        }
        C2654g.m723a(errorType, "Error type is null");
        C2654g.m725a(str, "Message is null");
        getAdSessionStatePublisher().m662a(errorType, str);
    }

    /* JADX INFO: renamed from: f */
    public boolean m552f() {
        return this.f602f && !this.f603g;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void finish() {
        if (this.f603g) {
            return;
        }
        this.f600d.clear();
        removeAllFriendlyObstructions();
        this.f603g = true;
        getAdSessionStatePublisher().m678f();
        C2633c.m590c().m594b(this);
        getAdSessionStatePublisher().mo672b();
        this.f601e = null;
        this.f607k = null;
    }

    /* JADX INFO: renamed from: g */
    public boolean m553g() {
        return this.f603g;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public String getAdSessionId() {
        return this.f604h;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public AdSessionStatePublisher getAdSessionStatePublisher() {
        return this.f601e;
    }

    /* JADX INFO: renamed from: h */
    public boolean m554h() {
        return this.f598b.isNativeImpressionOwner();
    }

    /* JADX INFO: renamed from: i */
    public boolean m555i() {
        return this.f598b.isNativeMediaEventsOwner();
    }

    /* JADX INFO: renamed from: j */
    public boolean m556j() {
        return this.f602f;
    }

    /* JADX INFO: renamed from: k */
    void m557k() {
        m543a();
        getAdSessionStatePublisher().m679g();
        this.f605i = true;
    }

    /* JADX INFO: renamed from: l */
    void m558l() {
        m545b();
        getAdSessionStatePublisher().m680h();
        this.f606j = true;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void registerAdView(View view) {
        if (this.f603g || m549c() == view) {
            return;
        }
        m546b(view);
        getAdSessionStatePublisher().m657a();
        m544a(view);
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void removeAllFriendlyObstructions() {
        if (this.f603g) {
            return;
        }
        this.f599c.m614b();
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void removeFriendlyObstruction(View view) {
        if (this.f603g) {
            return;
        }
        this.f599c.m615c(view);
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void setPossibleObstructionListener(PossibleObstructionListener possibleObstructionListener) {
        this.f607k = possibleObstructionListener;
    }

    @Override // com.iab.omid.library.inmobi.adsession.AdSession
    public void start() {
        if (this.f602f || this.f601e == null) {
            return;
        }
        this.f602f = true;
        C2633c.m590c().m595c(this);
        this.f601e.m658a(C2639i.m638c().m640b());
        this.f601e.m669a(C2631a.m581a().m585b());
        this.f601e.mo663a(this, this.f597a);
    }
}
