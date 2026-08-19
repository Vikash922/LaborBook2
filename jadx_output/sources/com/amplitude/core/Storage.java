package com.amplitude.core;

import com.amplitude.android.migration.DatabaseConstants;
import com.amplitude.android.migration.RemnantDataMigration;
import com.amplitude.core.events.BaseEvent;
import com.amplitude.core.platform.EventPipeline;
import com.amplitude.core.utilities.ResponseHandler;
import com.laborbook.base.analytics.ConstantEventAttributes;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: Storage.kt */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(m2721d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001:\u0001!J\u0019\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0001H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0005J(\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH&J\u0012\u0010\u0010\u001a\u0004\u0018\u00010\u00032\u0006\u0010\u0011\u001a\u00020\u0012H&J\u000e\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0014H&J\u0019\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u0012H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0017J\u0011\u0010\u0018\u001a\u00020\u0016H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u0019J!\u0010\u001a\u001a\u00020\u00162\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u0003H¦@ø\u0001\u0000¢\u0006\u0002\u0010\u001cJ\u0019\u0010\u001d\u001a\u00020\u00162\u0006\u0010\u001e\u001a\u00020\u001fH¦@ø\u0001\u0000¢\u0006\u0002\u0010 ø\u0001\u0001\u0082\u0002\n\n\u0002\b\u0019\n\u0004\b!0\u0001¨\u0006\"À\u0006\u0001"}, m2722d2 = {"Lcom/amplitude/core/Storage;", "", "getEventsString", "", "content", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getResponseHandler", "Lcom/amplitude/core/utilities/ResponseHandler;", "eventPipeline", "Lcom/amplitude/core/platform/EventPipeline;", "configuration", "Lcom/amplitude/core/Configuration;", "scope", "Lkotlinx/coroutines/CoroutineScope;", "dispatcher", "Lkotlinx/coroutines/CoroutineDispatcher;", "read", "key", "Lcom/amplitude/core/Storage$Constants;", "readEventsContent", "", "remove", "", "(Lcom/amplitude/core/Storage$Constants;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "rollover", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "write", "value", "(Lcom/amplitude/core/Storage$Constants;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "writeEvent", "event", "Lcom/amplitude/core/events/BaseEvent;", "(Lcom/amplitude/core/events/BaseEvent;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Constants", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
public interface Storage {
    Object getEventsString(Object obj, Continuation<? super String> continuation);

    ResponseHandler getResponseHandler(EventPipeline eventPipeline, Configuration configuration, CoroutineScope scope, CoroutineDispatcher dispatcher);

    String read(Constants key);

    List<Object> readEventsContent();

    Object remove(Constants constants, Continuation<? super Unit> continuation);

    Object rollover(Continuation<? super Unit> continuation);

    Object write(Constants constants, String str, Continuation<? super Unit> continuation);

    Object writeEvent(BaseEvent baseEvent, Continuation<? super Unit> continuation);

    /* JADX INFO: compiled from: Storage.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\r¨\u0006\u000e"}, m2722d2 = {"Lcom/amplitude/core/Storage$Constants;", "", "rawVal", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getRawVal", "()Ljava/lang/String;", "LAST_EVENT_ID", "PREVIOUS_SESSION_ID", "LAST_EVENT_TIME", "OPT_OUT", "Events", "APP_VERSION", "APP_BUILD", "core"}, m2723k = 1, m2724mv = {1, 5, 1}, m2726xi = 48)
    public enum Constants {
        LAST_EVENT_ID(RemnantDataMigration.LAST_EVENT_ID_KEY),
        PREVIOUS_SESSION_ID(RemnantDataMigration.PREVIOUS_SESSION_ID_KEY),
        LAST_EVENT_TIME(RemnantDataMigration.LAST_EVENT_TIME_KEY),
        OPT_OUT("opt_out"),
        Events(DatabaseConstants.EVENT_TABLE_NAME),
        APP_VERSION(ConstantEventAttributes.APP_VERSION),
        APP_BUILD("app_build");

        private final String rawVal;

        Constants(String str) {
            this.rawVal = str;
        }

        public final String getRawVal() {
            return this.rawVal;
        }
    }
}
