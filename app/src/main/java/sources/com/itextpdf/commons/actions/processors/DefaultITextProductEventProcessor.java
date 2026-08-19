package com.itextpdf.commons.actions.processors;

import androidx.work.WorkRequest;
import com.itextpdf.commons.actions.AbstractProductProcessITextEvent;
import com.itextpdf.commons.actions.confirmations.ConfirmEvent;
import com.itextpdf.commons.utils.Base64;
import java.nio.charset.StandardCharsets;
import java.util.concurrent.atomic.AtomicLong;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* JADX INFO: loaded from: classes6.dex */
public class DefaultITextProductEventProcessor extends AbstractITextProductEventProcessor {
    private static final int MAX_LVL;
    private final AtomicLong counter;
    private final AtomicLong level;
    private final Object lock;
    private final AtomicLong repeatLevel;
    static final byte[] MESSAGE_FOR_LOGGING = Base64.decode("WW91IGFyZSB1c2luZyBpVGV4dCB1bmRlciB0aGUgQUdQTC4KCklmIHRoaXMgaXMgeW91ciBpbnRlbnRpb24sIHlvdSBoYXZlIHB1Ymxpc2hlZCB5b3VyIG93biBzb3VyY2UgY29kZSBhcyBBR1BMIHNvZnR3YXJlIHRvby4KUGxlYXNlIGxldCB1cyBrbm93IHdoZXJlIHRvIGZpbmQgeW91ciBzb3VyY2UgY29kZSBieSBzZW5kaW5nIGEgbWFpbCB0byBhZ3BsQGl0ZXh0cGRmLmNvbQpXZSdkIGJlIGhvbm9yZWQgdG8gYWRkIGl0IHRvIG91ciBsaXN0IG9mIEFHUEwgcHJvamVjdHMgYnVpbHQgb24gdG9wIG9mIGlUZXh0IDcKYW5kIHdlJ2xsIGV4cGxhaW4gaG93IHRvIHJlbW92ZSB0aGlzIG1lc3NhZ2UgZnJvbSB5b3VyIGVycm9yIGxvZ3MuCgpJZiB0aGlzIHdhc24ndCB5b3VyIGludGVudGlvbiwgeW91IGFyZSBwcm9iYWJseSB1c2luZyBpVGV4dCBpbiBhIG5vbi1mcmVlIGVudmlyb25tZW50LgpJbiB0aGlzIGNhc2UsIHBsZWFzZSBjb250YWN0IHVzIGJ5IGZpbGxpbmcgb3V0IHRoaXMgZm9ybTogaHR0cDovL2l0ZXh0cGRmLmNvbS9zYWxlcwpJZiB5b3UgYXJlIGEgY3VzdG9tZXIsIHdlJ2xsIGV4cGxhaW4gaG93IHRvIGluc3RhbGwgeW91ciBsaWNlbnNlIGtleSB0byBhdm9pZCB0aGlzIG1lc3NhZ2UuCklmIHlvdSdyZSBub3QgYSBjdXN0b21lciwgd2UnbGwgZXhwbGFpbiB0aGUgYmVuZWZpdHMgb2YgYmVjb21pbmcgYSBjdXN0b21lci4=");
    private static final Logger LOGGER = LoggerFactory.getLogger((Class<?>) DefaultITextProductEventProcessor.class);
    private static final long[] REPEAT = {WorkRequest.MIN_BACKOFF_MILLIS, 5000, 1000};

    static {
        MAX_LVL = r0.length - 1;
    }

    public DefaultITextProductEventProcessor(String str) {
        super(str);
        this.lock = new Object();
        this.counter = new AtomicLong(0L);
        AtomicLong atomicLong = new AtomicLong(0L);
        this.level = atomicLong;
        this.repeatLevel = new AtomicLong(acquireRepeatLevel((int) atomicLong.get()));
    }

    @Override // com.itextpdf.commons.actions.processors.AbstractITextProductEventProcessor, com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public void onEvent(AbstractProductProcessITextEvent abstractProductProcessITextEvent) {
        boolean z;
        if (abstractProductProcessITextEvent instanceof ConfirmEvent) {
            synchronized (this.lock) {
                if (this.counter.incrementAndGet() > this.repeatLevel.get()) {
                    this.counter.set(0L);
                    long jIncrementAndGet = this.level.incrementAndGet();
                    int i = MAX_LVL;
                    if (jIncrementAndGet > i) {
                        this.level.set(i);
                    }
                    this.repeatLevel.set(acquireRepeatLevel((int) this.level.get()));
                    z = true;
                } else {
                    z = false;
                }
            }
            if (z) {
                String str = new String(MESSAGE_FOR_LOGGING, StandardCharsets.ISO_8859_1);
                LOGGER.info(str);
                System.out.println(str);
            }
        }
    }

    @Override // com.itextpdf.commons.actions.processors.AbstractITextProductEventProcessor, com.itextpdf.commons.actions.processors.ITextProductEventProcessor
    public String getUsageType() {
        return "AGPL";
    }

    long acquireRepeatLevel(int i) {
        return REPEAT[i];
    }
}
