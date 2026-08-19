package com.iab.omid.library.inmobi.walking.async;

import com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b;
import java.util.ArrayDeque;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: renamed from: com.iab.omid.library.inmobi.walking.async.c */
/* JADX INFO: loaded from: classes6.dex */
public class C2663c implements AbstractAsyncTaskC2662b.a {

    /* JADX INFO: renamed from: a */
    private final BlockingQueue<Runnable> f721a;

    /* JADX INFO: renamed from: b */
    private final ThreadPoolExecutor f722b;

    /* JADX INFO: renamed from: c */
    private final ArrayDeque<AbstractAsyncTaskC2662b> f723c = new ArrayDeque<>();

    /* JADX INFO: renamed from: d */
    private AbstractAsyncTaskC2662b f724d = null;

    public C2663c() {
        LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        this.f721a = linkedBlockingQueue;
        this.f722b = new ThreadPoolExecutor(1, 1, 1L, TimeUnit.SECONDS, linkedBlockingQueue);
    }

    /* JADX INFO: renamed from: a */
    private void m786a() {
        AbstractAsyncTaskC2662b abstractAsyncTaskC2662bPoll = this.f723c.poll();
        this.f724d = abstractAsyncTaskC2662bPoll;
        if (abstractAsyncTaskC2662bPoll != null) {
            abstractAsyncTaskC2662bPoll.m782a(this.f722b);
        }
    }

    @Override // com.iab.omid.library.inmobi.walking.async.AbstractAsyncTaskC2662b.a
    /* JADX INFO: renamed from: a */
    public void mo783a(AbstractAsyncTaskC2662b abstractAsyncTaskC2662b) {
        this.f724d = null;
        m786a();
    }

    /* JADX INFO: renamed from: b */
    public void m787b(AbstractAsyncTaskC2662b abstractAsyncTaskC2662b) {
        abstractAsyncTaskC2662b.m780a(this);
        this.f723c.add(abstractAsyncTaskC2662b);
        if (this.f724d == null) {
            m786a();
        }
    }
}
