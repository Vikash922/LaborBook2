package com.rebuilt.app.keep.utils;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.datastore.preferences.core.Preferences;
import androidx.datastore.preferences.core.PreferencesKeys;
import com.rebuilt.app.base.datastore.DataStoreManager;
import com.rebuilt.app.keep.C3656R;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import org.koin.core.Koin;
import org.koin.core.component.KoinComponent;
import org.koin.core.component.KoinScopeComponent;
import org.koin.core.parameter.DefinitionParameters;
import org.koin.core.qualifier.Qualifier;
import org.koin.core.scope.Scope;
import org.koin.p048mp.KoinPlatformTools;

/* JADX INFO: compiled from: CoachMarkManager.kt */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(m2721d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u001a2\u00020\u0001:\u0001\u001aB\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u000f\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ\u0016\u0010\u0011\u001a\u00020\u00102\u0006\u0010\f\u001a\u00020\rH\u0086@¢\u0006\u0002\u0010\u000eJ\u0006\u0010\u0012\u001a\u00020\u000bJ$\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00100\u0019R\u001b\u0010\u0004\u001a\u00020\u00058BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u001b"}, m2722d2 = {"Lcom/laborbook/keep/utils/CoachMarkManager;", "Lorg/koin/core/component/KoinComponent;", "<init>", "()V", "dataStore", "Lcom/laborbook/base/datastore/DataStoreManager;", "getDataStore", "()Lcom/laborbook/base/datastore/DataStoreManager;", "dataStore$delegate", "Lkotlin/Lazy;", "shouldShowCoachMark", "", "context", "Landroid/content/Context;", "(Landroid/content/Context;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "markCoachMarkAsShown", "", "resetCoachMark", "isDebugMode", "showEditButtonCoachMark", "activity", "Landroid/app/Activity;", "targetView", "Landroid/view/View;", "onDismiss", "Lkotlin/Function0;", "Companion", "keep_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class CoachMarkManager implements KoinComponent {

    /* JADX INFO: renamed from: dataStore$delegate, reason: from kotlin metadata */
    private final Lazy dataStore;
    private static final Preferences.Key<Boolean> COACH_MARK_SHOWN_KEY = PreferencesKeys.booleanKey("edit_button_coach_mark_shown");

    /* JADX INFO: renamed from: com.rebuilt.app.keep.utils.CoachMarkManager$shouldShowCoachMark$1 */
    /* JADX INFO: compiled from: CoachMarkManager.kt */
    @Metadata(m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.rebuilt.app.keep.utils.CoachMarkManager", m2735f = "CoachMarkManager.kt", m2736i = {}, m2737l = {34}, m2738m = "shouldShowCoachMark", m2739n = {}, m2740s = {})
    static final class C38621 extends ContinuationImpl {
        int label;
        /* synthetic */ Object result;

        C38621(Continuation<? super C38621> continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CoachMarkManager.this.shouldShowCoachMark(null, this);
        }
    }

    public final boolean isDebugMode() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public CoachMarkManager() {
        final CoachMarkManager coachMarkManager = this;
        LazyThreadSafetyMode lazyThreadSafetyModeDefaultLazyMode = KoinPlatformTools.INSTANCE.defaultLazyMode();
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.dataStore = LazyKt.lazy(lazyThreadSafetyModeDefaultLazyMode, (Function0) new Function0<DataStoreManager>() { // from class: com.rebuilt.app.keep.utils.CoachMarkManager$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v5, types: [com.rebuilt.app.base.datastore.DataStoreManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final DataStoreManager invoke() {
                Scope rootScope;
                KoinComponent koinComponent = coachMarkManager;
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

    private final DataStoreManager getDataStore() {
        return (DataStoreManager) this.dataStore.getValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object shouldShowCoachMark(android.content.Context r5, kotlin.coroutines.Continuation<? super java.lang.Boolean> r6) {
        /*
            r4 = this;
            boolean r5 = r6 instanceof com.rebuilt.app.keep.utils.CoachMarkManager.C38621
            if (r5 == 0) goto L14
            r5 = r6
            com.rebuilt.app.keep.utils.CoachMarkManager$shouldShowCoachMark$1 r5 = (com.rebuilt.app.keep.utils.CoachMarkManager.C38621) r5
            int r0 = r5.label
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L14
            int r6 = r5.label
            int r6 = r6 - r1
            r5.label = r6
            goto L19
        L14:
            com.rebuilt.app.keep.utils.CoachMarkManager$shouldShowCoachMark$1 r5 = new com.rebuilt.app.keep.utils.CoachMarkManager$shouldShowCoachMark$1
            r5.<init>(r6)
        L19:
            java.lang.Object r6 = r5.result
            java.lang.Object r0 = kotlin.coroutines.intrinsics.IntrinsicsKt.getCOROUTINE_SUSPENDED()
            int r1 = r5.label
            r2 = 1
            if (r1 == 0) goto L32
            if (r1 != r2) goto L2a
            kotlin.ResultKt.throwOnFailure(r6)
            goto L4d
        L2a:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r6)
            throw r5
        L32:
            kotlin.ResultKt.throwOnFailure(r6)
            com.rebuilt.app.base.datastore.DataStoreManager r6 = r4.getDataStore()
            androidx.datastore.preferences.core.Preferences$Key<java.lang.Boolean> r1 = com.rebuilt.app.keep.utils.CoachMarkManager.COACH_MARK_SHOWN_KEY
            r3 = 0
            java.lang.Boolean r3 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r3)
            kotlinx.coroutines.flow.Flow r6 = r6.read(r1, r3)
            r5.label = r2
            java.lang.Object r6 = kotlinx.coroutines.flow.FlowKt.first(r6, r5)
            if (r6 != r0) goto L4d
            return r0
        L4d:
            java.lang.Boolean r6 = (java.lang.Boolean) r6
            boolean r5 = r6.booleanValue()
            java.lang.StringBuilder r6 = new java.lang.StringBuilder
            java.lang.String r0 = "shouldShowCoachMark: isShown = "
            r6.<init>(r0)
            java.lang.StringBuilder r6 = r6.append(r5)
            java.lang.String r6 = r6.toString()
            java.lang.String r0 = "CoachMarkManager"
            android.util.Log.d(r0, r6)
            r5 = r5 ^ r2
            java.lang.Boolean r5 = kotlin.coroutines.jvm.internal.Boxing.boxBoolean(r5)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.rebuilt.app.keep.utils.CoachMarkManager.shouldShowCoachMark(android.content.Context, kotlin.coroutines.Continuation):java.lang.Object");
    }

    public final Object markCoachMarkAsShown(Context context, Continuation<? super Unit> continuation) {
        Object objWrite = getDataStore().write(COACH_MARK_SHOWN_KEY, Boxing.boxBoolean(true), continuation);
        return objWrite == IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objWrite : Unit.INSTANCE;
    }

    public final Object resetCoachMark(Context context, Continuation<? super Unit> continuation) {
        Log.w("CoachMarkManager", "resetCoachMark: Attempted to reset coach mark in release mode - ignored");
        return Unit.INSTANCE;
    }

    public final void showEditButtonCoachMark(Activity activity, View targetView, final Function0<Unit> onDismiss) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        Intrinsics.checkNotNullParameter(targetView, "targetView");
        Intrinsics.checkNotNullParameter(onDismiss, "onDismiss");
        Log.d("CoachMarkManager", "showEditButtonCoachMark: Starting coach mark display");
        View viewInflate = LayoutInflater.from(activity).inflate(C3656R.layout.coach_mark_simple, (ViewGroup) null);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2);
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.setBackgroundDrawable(null);
        popupWindow.setOnDismissListener(new PopupWindow.OnDismissListener() { // from class: com.rebuilt.app.keep.utils.CoachMarkManager$$ExternalSyntheticLambda0
            @Override // android.widget.PopupWindow.OnDismissListener
            public final void onDismiss() {
                CoachMarkManager.showEditButtonCoachMark$lambda$0(onDismiss);
            }
        });
        TextView textView = (TextView) viewInflate.findViewById(C3656R.id.tv_title);
        TextView textView2 = (TextView) viewInflate.findViewById(C3656R.id.tv_description);
        TextView textView3 = (TextView) viewInflate.findViewById(C3656R.id.btn_got_it);
        textView.setText(activity.getString(C3656R.string.edit_staff_details));
        textView2.setText(activity.getString(C3656R.string.edit_button_coach_mark_description));
        textView3.setText(activity.getString(C3656R.string.got_it));
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.rebuilt.app.keep.utils.CoachMarkManager$$ExternalSyntheticLambda1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CoachMarkManager.showEditButtonCoachMark$lambda$1(popupWindow, view);
            }
        });
        targetView.getLocationInWindow(new int[2]);
        popupWindow.showAsDropDown(targetView, ((-viewInflate.getWidth()) / 2) + (targetView.getWidth() / 2), 20);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEditButtonCoachMark$lambda$0(Function0 onDismiss) {
        Intrinsics.checkNotNullParameter(onDismiss, "$onDismiss");
        onDismiss.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showEditButtonCoachMark$lambda$1(PopupWindow popupWindow, View view) {
        Intrinsics.checkNotNullParameter(popupWindow, "$popupWindow");
        popupWindow.dismiss();
    }
}
