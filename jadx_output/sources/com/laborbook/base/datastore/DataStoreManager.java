package com.laborbook.base.datastore;

import android.content.Context;
import androidx.datastore.core.DataStore;
import androidx.datastore.preferences.PreferenceDataStoreDelegateKt;
import androidx.datastore.preferences.core.MutablePreferences;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import androidx.datastore.preferences.core.PreferencesKt;
import com.itextpdf.svg.SvgConstants;
import com.laborbook.base.analytics.ConstantEventAttributes;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference2Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.properties.ReadOnlyProperty;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: compiled from: DataStoreManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001f2\u00020\u0001:\u0001\u001fB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J*\u0010\u000e\u001a\u00020\u000f\"\u0004\b\u0000\u0010\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00100\u00122\u0006\u0010\u0013\u001a\u0002H\u0010H\u0086@¢\u0006\u0002\u0010\u0014J\u0016\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\u0017H\u0086@¢\u0006\u0002\u0010\u0018J-\u0010\u0019\u001a\b\u0012\u0004\u0012\u0002H\u00100\u001a\"\u0004\b\u0000\u0010\u00102\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u00100\u00122\u0006\u0010\u001b\u001a\u0002H\u0010¢\u0006\u0002\u0010\u001cJ\u000e\u0010\u001d\u001a\u00020\u000fH\u0086@¢\u0006\u0002\u0010\u001eR%\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007*\u00020\u00038BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\nR\u0014\u0010\r\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006 "}, m2722d2 = {"Lcom/laborbook/base/datastore/DataStoreManager;", "", "context", "Landroid/content/Context;", "<init>", "(Landroid/content/Context;)V", "userPreferencesDataStore", "Landroidx/datastore/core/DataStore;", "Landroidx/datastore/preferences/core/Preferences;", "getUserPreferencesDataStore", "(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", "userPreferencesDataStore$delegate", "Lkotlin/properties/ReadOnlyProperty;", "dataStore", "write", "", "T", "key", "Landroidx/datastore/preferences/core/Preferences$Key;", "value", "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "recordInterstitialShown", "todayEpochDay", "", "(ILkotlin/coroutines/Continuation;)Ljava/lang/Object;", "read", "Lkotlinx/coroutines/flow/Flow;", "defaultValue", "(Landroidx/datastore/preferences/core/Preferences$Key;Ljava/lang/Object;)Lkotlinx/coroutines/flow/Flow;", "clearAllPreferences", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "Companion", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class DataStoreManager {
    private final DataStore<Preferences> dataStore;

    /* JADX INFO: renamed from: userPreferencesDataStore$delegate, reason: from kotlin metadata */
    private final ReadOnlyProperty userPreferencesDataStore;
    static final /* synthetic */ KProperty<Object>[] $$delegatedProperties = {Reflection.property2(new PropertyReference2Impl(DataStoreManager.class, "userPreferencesDataStore", "getUserPreferencesDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);
    private static final Preferences.Key<String> ACCESS_TOKEN = PreferencesKeys.stringKey("access_token");
    private static final Preferences.Key<String> USER_ID = PreferencesKeys.stringKey("user_id");
    private static final Preferences.Key<String> USER_NAME = PreferencesKeys.stringKey(ConstantEventAttributes.USER_NAME);
    private static final Preferences.Key<String> USER_TYPE = PreferencesKeys.stringKey(ConstantEventAttributes.USER_TYPE);
    private static final Preferences.Key<String> MOBILE_NUMBER = PreferencesKeys.stringKey("mobile_number");
    private static final Preferences.Key<String> COMPANY_ID = PreferencesKeys.stringKey("company_id");
    private static final Preferences.Key<Boolean> IS_LOGGED_IN = PreferencesKeys.booleanKey("is_logged_in");
    private static final Preferences.Key<Integer> INT_KEY = PreferencesKeys.intKey("int_key");
    private static final Preferences.Key<String> LANGUAGE_KEY = PreferencesKeys.stringKey("language_key");
    private static final Preferences.Key<Boolean> FIRST_TIME_APP_OPEN = PreferencesKeys.booleanKey("first_time_app_open");
    private static final Preferences.Key<Boolean> INTERACTED_WITH_APP_FEATURES = PreferencesKeys.booleanKey("interacted_with_app_features");
    private static final Preferences.Key<Long> PREMIUM_OFFER_LOCAL_END_EPOCH_MS = PreferencesKeys.longKey("premium_offer_local_end_epoch_ms");
    private static final Preferences.Key<Integer> APP_OPEN_COUNT = PreferencesKeys.intKey(ConstantEventAttributes.APP_OPEN_COUNT);
    private static final Preferences.Key<String> FCM_TOKEN = PreferencesKeys.stringKey("fcm_token");
    private static final Preferences.Key<Boolean> GOOGLE_ADS_ENABLED = PreferencesKeys.booleanKey("google_ads_enabled");
    private static final Preferences.Key<Boolean> HOME_PAGE_ADS_ENABLED = PreferencesKeys.booleanKey("home_page_ads_enabled");
    private static final Preferences.Key<Boolean> PRIVACY_MODE_ENABLED = PreferencesKeys.booleanKey("privacy_mode_enabled");
    private static final Preferences.Key<Boolean> APP_LOCK_ENABLED = PreferencesKeys.booleanKey("app_lock_enabled");
    private static final Preferences.Key<String> LAST_AUTH_TIME = PreferencesKeys.stringKey("last_auth_time");
    private static final Preferences.Key<Integer> LAST_INTERSTITIAL_EPOCH_DAY = PreferencesKeys.intKey("last_interstitial_epoch_day");
    private static final Preferences.Key<Integer> INTERSTITIAL_COUNT_TODAY = PreferencesKeys.intKey("interstitial_count_today");
    private static final Preferences.Key<Boolean> REFER_FRIEND_BOTTOM_SHEET_SHOWN = PreferencesKeys.booleanKey("refer_friend_bottom_sheet_shown");
    private static final Preferences.Key<Boolean> HAS_SEEN_HOME_SCREEN = PreferencesKeys.booleanKey("has_seen_home_screen");
    private static final Preferences.Key<String> INSTALL_SOURCE = PreferencesKeys.stringKey(ConstantEventAttributes.INSTALL_SOURCE);
    private static final Preferences.Key<String> INSTALL_REFERRER_RAW = PreferencesKeys.stringKey("install_referrer_raw");
    private static final Preferences.Key<Boolean> PRO_STATUS = PreferencesKeys.booleanKey("pro_status");
    private static final Preferences.Key<String> PREMIUM_OFFER_LAST_SHOWN = PreferencesKeys.stringKey("premium_offer_last_shown");
    private static final Preferences.Key<Integer> PREMIUM_OFFER_SHOW_COUNT = PreferencesKeys.intKey("premium_offer_show_count");
    private static final Preferences.Key<String> PREMIUM_SUBSCRIPTION_ID = PreferencesKeys.stringKey("premium_subscription_id");
    private static final Preferences.Key<String> PREMIUM_PLAN_NAME = PreferencesKeys.stringKey("premium_plan_name");
    private static final Preferences.Key<String> PREMIUM_SUBSCRIPTION_STATUS = PreferencesKeys.stringKey("premium_subscription_status");
    private static final Preferences.Key<String> PREMIUM_END_DATE = PreferencesKeys.stringKey("premium_end_date");
    private static final Preferences.Key<Boolean> IS_EXISTING_USER = PreferencesKeys.booleanKey("is_existing_user");

    public DataStoreManager(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        this.userPreferencesDataStore = PreferenceDataStoreDelegateKt.preferencesDataStore$default("app_datastore", null, null, null, 14, null);
        this.dataStore = getUserPreferencesDataStore(context);
    }

    private final DataStore<Preferences> getUserPreferencesDataStore(Context context) {
        return (DataStore) this.userPreferencesDataStore.getValue(context, $$delegatedProperties[0]);
    }

    /* JADX INFO: renamed from: com.laborbook.base.datastore.DataStoreManager$write$2 */
    /* JADX INFO: compiled from: DataStoreManager.kt */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.datastore.DataStoreManager$write$2", m2735f = "DataStoreManager.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35842 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        final /* synthetic */ Preferences.Key<T> $key;
        final /* synthetic */ T $value;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35842(Preferences.Key<T> key, T t, Continuation<? super C35842> continuation) {
            super(2, continuation);
            this.$key = key;
            this.$value = t;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C35842 c35842 = new C35842(this.$key, this.$value, continuation);
            c35842.L$0 = obj;
            return c35842;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
            return ((C35842) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ((MutablePreferences) this.L$0).set(this.$key, this.$value);
            return Unit.INSTANCE;
        }
    }

    public final <T> Object write(Preferences.Key<T> key, T t, Continuation<? super Unit> continuation) {
        Object objEdit = PreferencesKt.edit(this.dataStore, new C35842(key, t, null), continuation);
        return objEdit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEdit : Unit.INSTANCE;
    }

    /* JADX INFO: renamed from: com.laborbook.base.datastore.DataStoreManager$recordInterstitialShown$2 */
    /* JADX INFO: compiled from: DataStoreManager.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.datastore.DataStoreManager$recordInterstitialShown$2", m2735f = "DataStoreManager.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35832 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        final /* synthetic */ int $todayEpochDay;
        /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35832(int i, Continuation<? super C35832> continuation) {
            super(2, continuation);
            this.$todayEpochDay = i;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C35832 c35832 = new C35832(this.$todayEpochDay, continuation);
            c35832.L$0 = obj;
            return c35832;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
            return ((C35832) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            MutablePreferences mutablePreferences = (MutablePreferences) this.L$0;
            Integer num = (Integer) mutablePreferences.get(DataStoreManager.INSTANCE.getLAST_INTERSTITIAL_EPOCH_DAY());
            int iIntValue = num != null ? num.intValue() : -1;
            Integer num2 = (Integer) mutablePreferences.get(DataStoreManager.INSTANCE.getINTERSTITIAL_COUNT_TODAY());
            int iIntValue2 = num2 != null ? num2.intValue() : 0;
            mutablePreferences.set(DataStoreManager.INSTANCE.getLAST_INTERSTITIAL_EPOCH_DAY(), Boxing.boxInt(this.$todayEpochDay));
            mutablePreferences.set(DataStoreManager.INSTANCE.getINTERSTITIAL_COUNT_TODAY(), Boxing.boxInt(iIntValue == this.$todayEpochDay ? 1 + iIntValue2 : 1));
            return Unit.INSTANCE;
        }
    }

    public final Object recordInterstitialShown(int i, Continuation<? super Unit> continuation) {
        Object objEdit = PreferencesKt.edit(this.dataStore, new C35832(i, null), continuation);
        return objEdit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEdit : Unit.INSTANCE;
    }

    public final <T> Flow<T> read(final Preferences.Key<T> key, final T defaultValue) {
        Intrinsics.checkNotNullParameter(key, "key");
        final Flow<Preferences> data = this.dataStore.getData();
        return new Flow<T>() { // from class: com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1

            /* JADX INFO: renamed from: com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1$2 */
            /* JADX INFO: compiled from: Emitters.kt */
            @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u00032\u0006\u0010\u0004\u001a\u0002H\u0002H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006¨\u0006\b"}, m2722d2 = {"<anonymous>", "", "T", SvgConstants.Attributes.PATH_DATA_CATMULL_CURVE, "value", "emit", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx/coroutines/flow/FlowKt__EmittersKt$unsafeTransform$1$1", "kotlinx/coroutines/flow/FlowKt__TransformKt$map$$inlined$unsafeTransform$1$2"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
            public static final class C35822<T> implements FlowCollector {
                final /* synthetic */ Object $defaultValue$inlined;
                final /* synthetic */ Preferences.Key $key$inlined;
                final /* synthetic */ FlowCollector $this_unsafeFlow;

                /* JADX INFO: renamed from: com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1$2$1, reason: invalid class name */
                /* JADX INFO: compiled from: Emitters.kt */
                @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
                @DebugMetadata(m2734c = "com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1$2", m2735f = "DataStoreManager.kt", m2736i = {}, m2737l = {223}, m2738m = "emit", m2739n = {}, m2740s = {})
                public static final class AnonymousClass1 extends ContinuationImpl {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(Continuation continuation) {
                        super(continuation);
                    }

                    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return C35822.this.emit(null, this);
                    }
                }

                public C35822(FlowCollector flowCollector, Preferences.Key key, Object obj) {
                    this.$this_unsafeFlow = flowCollector;
                    this.$key$inlined = key;
                    this.$defaultValue$inlined = obj;
                }

                /* JADX WARN: Multi-variable type inference failed */
                /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
                @Override // kotlinx.coroutines.flow.FlowCollector
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object emit(java.lang.Object r5, kotlin.coroutines.Continuation r6) {
                    /*
                        r4 = this;
                        boolean r0 = r6 instanceof com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1.C35822.AnonymousClass1
                        if (r0 == 0) goto L14
                        r0 = r6
                        com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1$2$1 r0 = (com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1.C35822.AnonymousClass1) r0
                        int r1 = r0.label
                        r2 = -2147483648(0xffffffff80000000, float:-0.0)
                        r1 = r1 & r2
                        if (r1 == 0) goto L14
                        int r6 = r0.label
                        int r6 = r6 - r2
                        r0.label = r6
                        goto L19
                    L14:
                        com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1$2$1 r0 = new com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1$2$1
                        r0.<init>(r6)
                    L19:
                        java.lang.Object r6 = r0.result
                        java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
                        int r2 = r0.label
                        r3 = 1
                        if (r2 == 0) goto L32
                        if (r2 != r3) goto L2a
                        kotlin.ResultKt.throwOnFailure(r6)
                        goto L4f
                    L2a:
                        java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                        java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                        r5.<init>(r6)
                        throw r5
                    L32:
                        kotlin.ResultKt.throwOnFailure(r6)
                        kotlinx.coroutines.flow.FlowCollector r6 = r4.$this_unsafeFlow
                        r2 = r0
                        kotlin.coroutines.Continuation r2 = (kotlin.coroutines.Continuation) r2
                        androidx.datastore.preferences.core.Preferences r5 = (androidx.datastore.preferences.core.Preferences) r5
                        androidx.datastore.preferences.core.Preferences$Key r2 = r4.$key$inlined
                        java.lang.Object r5 = r5.get(r2)
                        if (r5 != 0) goto L46
                        java.lang.Object r5 = r4.$defaultValue$inlined
                    L46:
                        r0.label = r3
                        java.lang.Object r5 = r6.emit(r5, r0)
                        if (r5 != r1) goto L4f
                        return r1
                    L4f:
                        kotlin.Unit r5 = kotlin.Unit.INSTANCE
                        return r5
                    */
                    throw new UnsupportedOperationException("Method not decompiled: com.laborbook.base.datastore.DataStoreManager$read$$inlined$map$1.C35822.emit(java.lang.Object, kotlin.coroutines.Continuation):java.lang.Object");
                }
            }

            @Override // kotlinx.coroutines.flow.Flow
            public Object collect(FlowCollector flowCollector, Continuation continuation) {
                Object objCollect = data.collect(new C35822(flowCollector, key, defaultValue), continuation);
                return objCollect == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objCollect : Unit.INSTANCE;
            }
        };
    }

    /* JADX INFO: renamed from: com.laborbook.base.datastore.DataStoreManager$clearAllPreferences$2 */
    /* JADX INFO: compiled from: DataStoreManager.kt */
    /* JADX INFO: loaded from: classes6.dex */
    @Metadata(m2721d1 = {"\u0000\f\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"}, m2722d2 = {"<anonymous>", "", "preferences", "Landroidx/datastore/preferences/core/MutablePreferences;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.datastore.DataStoreManager$clearAllPreferences$2", m2735f = "DataStoreManager.kt", m2736i = {}, m2737l = {}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35812 extends SuspendLambda implements Function2<MutablePreferences, Continuation<? super Unit>, Object> {
        /* synthetic */ Object L$0;
        int label;

        C35812(Continuation<? super C35812> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            C35812 c35812 = new C35812(continuation);
            c35812.L$0 = obj;
            return c35812;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(MutablePreferences mutablePreferences, Continuation<? super Unit> continuation) {
            return ((C35812) create(mutablePreferences, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            IntrinsicsKt.getCOROUTINE_SUSPENDED();
            if (this.label != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ResultKt.throwOnFailure(obj);
            ((MutablePreferences) this.L$0).clear();
            return Unit.INSTANCE;
        }
    }

    public final Object clearAllPreferences(Continuation<? super Unit> continuation) {
        Object objEdit = PreferencesKt.edit(this.dataStore, new C35812(null), continuation);
        return objEdit == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objEdit : Unit.INSTANCE;
    }

    /* JADX INFO: compiled from: DataStoreManager.kt */
    @Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b,\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u0017\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0017\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\bR\u0017\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\bR\u0017\u0010\r\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\bR\u0017\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\bR\u0017\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0012\u0010\bR\u0017\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0015\u0010\bR\u0017\u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0018\u0010\bR\u0017\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001a\u0010\bR\u0017\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001c\u0010\bR\u0017\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\bR\u0017\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020 0\u0005¢\u0006\b\n\u0000\u001a\u0004\b!\u0010\bR\u0017\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005¢\u0006\b\n\u0000\u001a\u0004\b#\u0010\bR\u0017\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b%\u0010\bR\u0017\u0010&\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b'\u0010\bR\u0017\u0010(\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b)\u0010\bR\u0017\u0010*\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b+\u0010\bR\u0017\u0010,\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010\bR\u0017\u0010.\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b/\u0010\bR\u0017\u00100\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005¢\u0006\b\n\u0000\u001a\u0004\b1\u0010\bR\u0017\u00102\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005¢\u0006\b\n\u0000\u001a\u0004\b3\u0010\bR\u0017\u00104\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b5\u0010\bR\u0017\u00106\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b7\u0010\bR\u0017\u00108\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b9\u0010\bR\u0017\u0010:\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b;\u0010\bR\u0017\u0010<\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\b=\u0010\bR\u0017\u0010>\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b?\u0010\bR\u0017\u0010@\u001a\b\u0012\u0004\u0012\u00020\u00170\u0005¢\u0006\b\n\u0000\u001a\u0004\bA\u0010\bR\u0017\u0010B\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\bC\u0010\bR\u0017\u0010D\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\bE\u0010\bR\u0017\u0010F\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\bG\u0010\bR\u0017\u0010H\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\bI\u0010\bR\u0017\u0010J\u001a\b\u0012\u0004\u0012\u00020\u00140\u0005¢\u0006\b\n\u0000\u001a\u0004\bK\u0010\b¨\u0006L"}, m2722d2 = {"Lcom/laborbook/base/datastore/DataStoreManager$Companion;", "", "<init>", "()V", "ACCESS_TOKEN", "Landroidx/datastore/preferences/core/Preferences$Key;", "", "getACCESS_TOKEN", "()Landroidx/datastore/preferences/core/Preferences$Key;", "USER_ID", "getUSER_ID", "USER_NAME", "getUSER_NAME", "USER_TYPE", "getUSER_TYPE", "MOBILE_NUMBER", "getMOBILE_NUMBER", "COMPANY_ID", "getCOMPANY_ID", "IS_LOGGED_IN", "", "getIS_LOGGED_IN", "INT_KEY", "", "getINT_KEY", "LANGUAGE_KEY", "getLANGUAGE_KEY", "FIRST_TIME_APP_OPEN", "getFIRST_TIME_APP_OPEN", "INTERACTED_WITH_APP_FEATURES", "getINTERACTED_WITH_APP_FEATURES", "PREMIUM_OFFER_LOCAL_END_EPOCH_MS", "", "getPREMIUM_OFFER_LOCAL_END_EPOCH_MS", "APP_OPEN_COUNT", "getAPP_OPEN_COUNT", "FCM_TOKEN", "getFCM_TOKEN", "GOOGLE_ADS_ENABLED", "getGOOGLE_ADS_ENABLED", "HOME_PAGE_ADS_ENABLED", "getHOME_PAGE_ADS_ENABLED", "PRIVACY_MODE_ENABLED", "getPRIVACY_MODE_ENABLED", "APP_LOCK_ENABLED", "getAPP_LOCK_ENABLED", "LAST_AUTH_TIME", "getLAST_AUTH_TIME", "LAST_INTERSTITIAL_EPOCH_DAY", "getLAST_INTERSTITIAL_EPOCH_DAY", "INTERSTITIAL_COUNT_TODAY", "getINTERSTITIAL_COUNT_TODAY", "REFER_FRIEND_BOTTOM_SHEET_SHOWN", "getREFER_FRIEND_BOTTOM_SHEET_SHOWN", "HAS_SEEN_HOME_SCREEN", "getHAS_SEEN_HOME_SCREEN", "INSTALL_SOURCE", "getINSTALL_SOURCE", "INSTALL_REFERRER_RAW", "getINSTALL_REFERRER_RAW", "PRO_STATUS", "getPRO_STATUS", "PREMIUM_OFFER_LAST_SHOWN", "getPREMIUM_OFFER_LAST_SHOWN", "PREMIUM_OFFER_SHOW_COUNT", "getPREMIUM_OFFER_SHOW_COUNT", "PREMIUM_SUBSCRIPTION_ID", "getPREMIUM_SUBSCRIPTION_ID", "PREMIUM_PLAN_NAME", "getPREMIUM_PLAN_NAME", "PREMIUM_SUBSCRIPTION_STATUS", "getPREMIUM_SUBSCRIPTION_STATUS", "PREMIUM_END_DATE", "getPREMIUM_END_DATE", "IS_EXISTING_USER", "getIS_EXISTING_USER", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        public final Preferences.Key<String> getACCESS_TOKEN() {
            return DataStoreManager.ACCESS_TOKEN;
        }

        public final Preferences.Key<String> getUSER_ID() {
            return DataStoreManager.USER_ID;
        }

        public final Preferences.Key<String> getUSER_NAME() {
            return DataStoreManager.USER_NAME;
        }

        public final Preferences.Key<String> getUSER_TYPE() {
            return DataStoreManager.USER_TYPE;
        }

        public final Preferences.Key<String> getMOBILE_NUMBER() {
            return DataStoreManager.MOBILE_NUMBER;
        }

        public final Preferences.Key<String> getCOMPANY_ID() {
            return DataStoreManager.COMPANY_ID;
        }

        public final Preferences.Key<Boolean> getIS_LOGGED_IN() {
            return DataStoreManager.IS_LOGGED_IN;
        }

        public final Preferences.Key<Integer> getINT_KEY() {
            return DataStoreManager.INT_KEY;
        }

        public final Preferences.Key<String> getLANGUAGE_KEY() {
            return DataStoreManager.LANGUAGE_KEY;
        }

        public final Preferences.Key<Boolean> getFIRST_TIME_APP_OPEN() {
            return DataStoreManager.FIRST_TIME_APP_OPEN;
        }

        public final Preferences.Key<Boolean> getINTERACTED_WITH_APP_FEATURES() {
            return DataStoreManager.INTERACTED_WITH_APP_FEATURES;
        }

        public final Preferences.Key<Long> getPREMIUM_OFFER_LOCAL_END_EPOCH_MS() {
            return DataStoreManager.PREMIUM_OFFER_LOCAL_END_EPOCH_MS;
        }

        public final Preferences.Key<Integer> getAPP_OPEN_COUNT() {
            return DataStoreManager.APP_OPEN_COUNT;
        }

        public final Preferences.Key<String> getFCM_TOKEN() {
            return DataStoreManager.FCM_TOKEN;
        }

        public final Preferences.Key<Boolean> getGOOGLE_ADS_ENABLED() {
            return DataStoreManager.GOOGLE_ADS_ENABLED;
        }

        public final Preferences.Key<Boolean> getHOME_PAGE_ADS_ENABLED() {
            return DataStoreManager.HOME_PAGE_ADS_ENABLED;
        }

        public final Preferences.Key<Boolean> getPRIVACY_MODE_ENABLED() {
            return DataStoreManager.PRIVACY_MODE_ENABLED;
        }

        public final Preferences.Key<Boolean> getAPP_LOCK_ENABLED() {
            return DataStoreManager.APP_LOCK_ENABLED;
        }

        public final Preferences.Key<String> getLAST_AUTH_TIME() {
            return DataStoreManager.LAST_AUTH_TIME;
        }

        public final Preferences.Key<Integer> getLAST_INTERSTITIAL_EPOCH_DAY() {
            return DataStoreManager.LAST_INTERSTITIAL_EPOCH_DAY;
        }

        public final Preferences.Key<Integer> getINTERSTITIAL_COUNT_TODAY() {
            return DataStoreManager.INTERSTITIAL_COUNT_TODAY;
        }

        public final Preferences.Key<Boolean> getREFER_FRIEND_BOTTOM_SHEET_SHOWN() {
            return DataStoreManager.REFER_FRIEND_BOTTOM_SHEET_SHOWN;
        }

        public final Preferences.Key<Boolean> getHAS_SEEN_HOME_SCREEN() {
            return DataStoreManager.HAS_SEEN_HOME_SCREEN;
        }

        public final Preferences.Key<String> getINSTALL_SOURCE() {
            return DataStoreManager.INSTALL_SOURCE;
        }

        public final Preferences.Key<String> getINSTALL_REFERRER_RAW() {
            return DataStoreManager.INSTALL_REFERRER_RAW;
        }

        public final Preferences.Key<Boolean> getPRO_STATUS() {
            return DataStoreManager.PRO_STATUS;
        }

        public final Preferences.Key<String> getPREMIUM_OFFER_LAST_SHOWN() {
            return DataStoreManager.PREMIUM_OFFER_LAST_SHOWN;
        }

        public final Preferences.Key<Integer> getPREMIUM_OFFER_SHOW_COUNT() {
            return DataStoreManager.PREMIUM_OFFER_SHOW_COUNT;
        }

        public final Preferences.Key<String> getPREMIUM_SUBSCRIPTION_ID() {
            return DataStoreManager.PREMIUM_SUBSCRIPTION_ID;
        }

        public final Preferences.Key<String> getPREMIUM_PLAN_NAME() {
            return DataStoreManager.PREMIUM_PLAN_NAME;
        }

        public final Preferences.Key<String> getPREMIUM_SUBSCRIPTION_STATUS() {
            return DataStoreManager.PREMIUM_SUBSCRIPTION_STATUS;
        }

        public final Preferences.Key<String> getPREMIUM_END_DATE() {
            return DataStoreManager.PREMIUM_END_DATE;
        }

        public final Preferences.Key<Boolean> getIS_EXISTING_USER() {
            return DataStoreManager.IS_EXISTING_USER;
        }
    }
}
