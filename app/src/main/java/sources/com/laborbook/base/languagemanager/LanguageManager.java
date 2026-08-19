package com.laborbook.base.languagemanager;

import android.content.Context;
import android.content.res.Configuration;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.laborbook.base.datastore.DataStoreManager;
import java.util.Locale;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.flow.Flow;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: LanguageManager.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u001e\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0086@¢\u0006\u0002\u0010\u0010J\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0012J\u0016\u0010\u0013\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u0014R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0015"}, m2722d2 = {"Lcom/laborbook/base/languagemanager/LanguageManager;", "Lorg/koin/core/component/KoinComponent;", "<init>", "()V", "dataStoreManager", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStoreManager", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStoreManager$delegate", "Lkotlin/Lazy;", "setLocale", "", "context", "Landroid/content/Context;", RemoteConfigConstants.RequestFieldKey.LANGUAGE_CODE, "", "(Landroid/content/Context;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getSavedLanguage", "Lkotlinx/coroutines/flow/Flow;", "loadLocale", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class LanguageManager implements KoinComponent {

    /* JADX INFO: renamed from: dataStoreManager$delegate, reason: from kotlin metadata */
    private final Lazy dataStoreManager;

    /* JADX INFO: renamed from: com.laborbook.base.languagemanager.LanguageManager$loadLocale$1 */
    /* JADX INFO: compiled from: LanguageManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.languagemanager.LanguageManager", m2735f = "LanguageManager.kt", m2736i = {0}, m2737l = {36}, m2738m = "loadLocale", m2739n = {"context"}, m2740s = {"L$0"})
    static final class C35901 extends ContinuationImpl {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        C35901(Continuation<? super C35901> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return LanguageManager.this.loadLocale(null, this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LanguageManager() {
        final LanguageManager languageManager = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStoreManager = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.laborbook.base.languagemanager.LanguageManager$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.laborbook.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = languageManager;
                Qualifier qualifier2 = qualifier;
                Function0<? extends DefinitionParameters> function0 = objArr;
                if (koinComponent instanceof KoinScopeComponent) {
                    rootScope = ((KoinScopeComponent) koinComponent).getScope();
                } else {
                    rootScope = koinComponent.getKoin().getScopeRegistry().getRootScope();
                }
                return rootScope.get(Reflection.getOrCreateKotlinClass(DataStoreManager.class), qualifier2, function0);
            }
        });
    }

    @Override // org.koin.core.component.KoinComponent
    public Koin getKoin() {
        return KoinComponent.DefaultImpls.getKoin(this);
    }

    private final DataStoreManager getDataStoreManager() {
        return (DataStoreManager) this.dataStoreManager.getValue();
    }

    public final Object setLocale(Context context, String str, Continuation<? super Unit> continuation) {
        Locale locale = new Locale(str);
        Locale.setDefault(locale);
        Configuration configuration = context.getResources().getConfiguration();
        configuration.setLocale(locale);
        context.getResources().updateConfiguration(configuration, context.getResources().getDisplayMetrics());
        Object objWrite = getDataStoreManager().write(DataStoreManager.INSTANCE.getLANGUAGE_KEY(), str, continuation);
        return objWrite == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWrite : Unit.INSTANCE;
    }

    public final Flow<String> getSavedLanguage() {
        return getDataStoreManager().read(DataStoreManager.INSTANCE.getLANGUAGE_KEY(), Locale.getDefault().getLanguage());
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object loadLocale(android.content.Context r5, kotlin.coroutines.Continuation<? super kotlin.Unit> r6) {
        /*
            r4 = this;
            boolean r0 = r6 instanceof com.laborbook.base.languagemanager.LanguageManager.C35901
            if (r0 == 0) goto L14
            r0 = r6
            com.laborbook.base.languagemanager.LanguageManager$loadLocale$1 r0 = (com.laborbook.base.languagemanager.LanguageManager.C35901) r0
            int r1 = r0.label
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r1 = r1 & r2
            if (r1 == 0) goto L14
            int r6 = r0.label
            int r6 = r6 - r2
            r0.label = r6
            goto L19
        L14:
            com.laborbook.base.languagemanager.LanguageManager$loadLocale$1 r0 = new com.laborbook.base.languagemanager.LanguageManager$loadLocale$1
            r0.<init>(r6)
        L19:
            java.lang.Object r6 = r0.result
            java.lang.Object r1 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r2 = r0.label
            r3 = 1
            if (r2 == 0) goto L36
            if (r2 != r3) goto L2e
            java.lang.Object r5 = r0.L$0
            android.content.Context r5 = (android.content.Context) r5
            kotlin.ResultKt.throwOnFailure(r6)
            goto L48
        L2e:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L36:
            kotlin.ResultKt.throwOnFailure(r6)
            kotlinx.coroutines.flow.Flow r6 = r4.getSavedLanguage()
            r0.L$0 = r5
            r0.label = r3
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.first(r6, r0)
            if (r6 != r1) goto L48
            return r1
        L48:
            java.lang.String r6 = (java.lang.String) r6
            java.util.Locale r0 = new java.util.Locale
            r0.<init>(r6)
            java.util.Locale.setDefault(r0)
            android.content.res.Resources r6 = r5.getResources()
            android.content.res.Configuration r6 = r6.getConfiguration()
            r6.setLocale(r0)
            android.content.res.Resources r0 = r5.getResources()
            android.content.res.Resources r5 = r5.getResources()
            android.util.DisplayMetrics r5 = r5.getDisplayMetrics()
            r0.updateConfiguration(r6, r5)
            kotlin.Unit r5 = kotlin.Unit.INSTANCE
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.laborbook.base.languagemanager.LanguageManager.loadLocale(android.content.Context, kotlin.coroutines.Continuation):java.lang.Object");
    }
}
