package com.laborbook.base.languagemanager;

import android.app.Dialog;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.LifecycleOwnerKt;
import com.boilerplate.uikit.views.textviews.text16.TextViewRegular16;
import com.google.android.material.C1346R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import com.laborbook.base.BaseBottomsheetFragment;
import com.laborbook.base.C3577R;
import com.laborbook.base.analytics.ConstantEventNames;
import com.laborbook.base.databinding.FragmentLanguageBottomSheetBinding;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.collections.MapsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.FlowKt;
import org.koin.android.ext.android.ComponentCallbackExtKt;
import org.koin.core.qualifier.Qualifier;
import org.objectweb.asm.Opcodes;

/* JADX INFO: compiled from: LanguageBottomSheetFragment.kt */
/* JADX INFO: loaded from: classes.dex */
@Metadata(m2721d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u0000 \"2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J&\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u0016\u001a\u00020\u0017H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\r2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00192\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\b\u0010\u001c\u001a\u00020\u0017H\u0002J\b\u0010\u001d\u001a\u00020\u0017H\u0002J\b\u0010\u001e\u001a\u00020\u0017H\u0002J\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u0006H\u0002J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u0006H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0012\u0010\u0013¨\u0006#"}, m2722d2 = {"Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;", "Lcom/laborbook/base/BaseBottomsheetFragment;", "Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;", "<init>", "()V", "screenName", "", "getScreenName", "()Ljava/lang/String;", "getViewBinding", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "languageManager", "Lcom/laborbook/base/languagemanager/LanguageManager;", "getLanguageManager", "()Lcom/laborbook/base/languagemanager/LanguageManager;", "languageManager$delegate", "Lkotlin/Lazy;", "onStart", "", "onCreateView", "Landroid/view/View;", "onViewCreated", "view", "setupNewLanguageAvatars", "loadSavedLanguage", "registerOnClickListeners", "changeLanguage", RemoteConfigConstants.RequestFieldKey.LANGUAGE_CODE, "markSelected", "Companion", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
public final class LanguageBottomSheetFragment extends BaseBottomsheetFragment<FragmentLanguageBottomSheetBinding> {

    /* JADX INFO: renamed from: Companion, reason: from kotlin metadata */
    public static final Companion INSTANCE = new Companion(null);

    /* JADX INFO: renamed from: languageManager$delegate, reason: from kotlin metadata */
    private final Lazy languageManager;

    @JvmStatic
    public static final LanguageBottomSheetFragment newInstance() {
        return INSTANCE.newInstance();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public LanguageBottomSheetFragment() {
        final LanguageBottomSheetFragment languageBottomSheetFragment = this;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        final Qualifier qualifier = null;
        final Object[] objArr = 0 == true ? 1 : 0;
        this.languageManager = LazyKt.lazy(lazyThreadSafetyMode, (Function0) new Function0<LanguageManager>() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$special$$inlined$inject$default$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [com.laborbook.base.languagemanager.LanguageManager, java.lang.Object] */
            @Override // kotlin.jvm.functions.Function0
            public final LanguageManager invoke() {
                ComponentCallbacks componentCallbacks = languageBottomSheetFragment;
                return ComponentCallbackExtKt.getDefaultScope(componentCallbacks).get(Reflection.getOrCreateKotlinClass(LanguageManager.class), qualifier, objArr);
            }
        });
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public String getScreenName() {
        return ConstantEventNames.LANGUAGE_BS;
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment
    public FragmentLanguageBottomSheetBinding getViewBinding(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return FragmentLanguageBottomSheetBinding.inflate(inflater, container, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LanguageManager getLanguageManager() {
        return (LanguageManager) this.languageManager.getValue();
    }

    /* JADX INFO: compiled from: LanguageBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\b\u0010\u0004\u001a\u00020\u0005H\u0007¨\u0006\u0006"}, m2722d2 = {"Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;", "", "<init>", "()V", "newInstance", "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;", "base_release"}, m2723k = 1, m2724mv = {2, 0, 0}, m2726xi = 48)
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private Companion() {
        }

        @JvmStatic
        public final LanguageBottomSheetFragment newInstance() {
            LanguageBottomSheetFragment languageBottomSheetFragment = new LanguageBottomSheetFragment();
            languageBottomSheetFragment.setArguments(new Bundle());
            return languageBottomSheetFragment;
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        super.onStart();
        Dialog dialog = getDialog();
        Intrinsics.checkNotNull(dialog, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog");
        BottomSheetDialog bottomSheetDialog = (BottomSheetDialog) dialog;
        View viewFindViewById = bottomSheetDialog.findViewById(C1346R.id.design_bottom_sheet);
        Intrinsics.checkNotNull(viewFindViewById, "null cannot be cast to non-null type android.view.View");
        BottomSheetBehavior bottomSheetBehaviorFrom = BottomSheetBehavior.from(viewFindViewById);
        Intrinsics.checkNotNullExpressionValue(bottomSheetBehaviorFrom, "from(...)");
        viewFindViewById.getLayoutParams().height = -1;
        bottomSheetBehaviorFrom.setState(3);
        Window window = bottomSheetDialog.getWindow();
        if (window != null) {
            window.setSoftInputMode(16);
        }
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        super.onCreateView(inflater, container, savedInstanceState);
        FragmentLanguageBottomSheetBinding binding = getBinding();
        return binding != null ? binding.getRoot() : null;
    }

    @Override // com.laborbook.base.BaseBottomsheetFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        registerOnClickListeners();
        setupNewLanguageAvatars();
        loadSavedLanguage();
    }

    private final void setupNewLanguageAvatars() {
        Pair[] pairArr = new Pair[4];
        FragmentLanguageBottomSheetBinding binding = getBinding();
        pairArr[0] = TuplesKt.m2729to(binding != null ? binding.btnGujarati : null, "ગુ");
        FragmentLanguageBottomSheetBinding binding2 = getBinding();
        pairArr[1] = TuplesKt.m2729to(binding2 != null ? binding2.btnPunjabi : null, "ਪੰ");
        FragmentLanguageBottomSheetBinding binding3 = getBinding();
        pairArr[2] = TuplesKt.m2729to(binding3 != null ? binding3.btnMalayalam : null, "മ");
        FragmentLanguageBottomSheetBinding binding4 = getBinding();
        pairArr[3] = TuplesKt.m2729to(binding4 != null ? binding4.btnOdia : null, "ଓ");
        Map mapMapOf = MapsKt.mapOf(pairArr);
        final int i = (int) (28 * getResources().getDisplayMetrics().density);
        final int color = Color.parseColor("#F1F8FF");
        final int color2 = Color.parseColor("#0752AD");
        for (Map.Entry entry : mapMapOf.entrySet()) {
            TextViewRegular16 textViewRegular16 = (TextViewRegular16) entry.getKey();
            final String str = (String) entry.getValue();
            if (textViewRegular16 != null) {
                Drawable drawable = new Drawable(color2, this, color, str, i) { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1
                    final /* synthetic */ int $bgColor;
                    final /* synthetic */ String $letter;
                    final /* synthetic */ int $size;
                    private final Paint paint = new Paint(1);
                    private final Paint textPaint;

                    @Override // android.graphics.drawable.Drawable
                    public int getOpacity() {
                        return -3;
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setAlpha(int alpha) {
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void setColorFilter(ColorFilter cf) {
                    }

                    {
                        this.$bgColor = color;
                        this.$letter = str;
                        this.$size = i;
                        Paint paint = new Paint(1);
                        paint.setColor(color2);
                        paint.setTextSize(12 * this.getResources().getDisplayMetrics().scaledDensity);
                        paint.setTypeface(Typeface.DEFAULT_BOLD);
                        paint.setTextAlign(Paint.Align.CENTER);
                        this.textPaint = paint;
                    }

                    @Override // android.graphics.drawable.Drawable
                    public void draw(Canvas canvas) {
                        Intrinsics.checkNotNullParameter(canvas, "canvas");
                        float fWidth = getBounds().width() / 2.0f;
                        float fHeight = getBounds().height() / 2.0f;
                        this.paint.setColor(this.$bgColor);
                        canvas.drawCircle(fWidth, fHeight, fWidth, this.paint);
                        canvas.drawText(this.$letter, fWidth, fHeight - ((this.textPaint.descent() + this.textPaint.ascent()) / 2), this.textPaint);
                    }

                    @Override // android.graphics.drawable.Drawable
                    public int getIntrinsicWidth() {
                        return this.$size;
                    }

                    @Override // android.graphics.drawable.Drawable
                    public int getIntrinsicHeight() {
                        return this.$size;
                    }
                };
                TextViewRegular16 textViewRegular162 = textViewRegular16 instanceof TextView ? textViewRegular16 : null;
                if (textViewRegular162 != null) {
                    textViewRegular162.setCompoundDrawablesWithIntrinsicBounds(drawable, (Drawable) null, (Drawable) null, (Drawable) null);
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$loadSavedLanguage$1 */
    /* JADX INFO: compiled from: LanguageBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.languagemanager.LanguageBottomSheetFragment$loadSavedLanguage$1", m2735f = "LanguageBottomSheetFragment.kt", m2736i = {}, m2737l = {117}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35881 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        int label;

        C35881(Continuation<? super C35881> continuation) {
            super(2, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LanguageBottomSheetFragment.this.new C35881(continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35881) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                this.label = 1;
                obj = FlowKt.first(LanguageBottomSheetFragment.this.getLanguageManager().getSavedLanguage(), this);
                if (obj == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            LanguageBottomSheetFragment.this.markSelected((String) obj);
            return Unit.INSTANCE;
        }
    }

    private final void loadSavedLanguage() {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C35881(null), 3, null);
    }

    private final void registerOnClickListeners() {
        ImageView imageView;
        TextViewRegular16 textViewRegular16;
        TextViewRegular16 textViewRegular162;
        TextViewRegular16 textViewRegular163;
        TextViewRegular16 textViewRegular164;
        TextViewRegular16 textViewRegular165;
        TextViewRegular16 textViewRegular166;
        TextViewRegular16 textViewRegular167;
        TextViewRegular16 textViewRegular168;
        TextViewRegular16 textViewRegular169;
        TextViewRegular16 textViewRegular1610;
        TextViewRegular16 textViewRegular1611;
        FragmentLanguageBottomSheetBinding binding = getBinding();
        if (binding != null && (textViewRegular1611 = binding.btnEnglish) != null) {
            textViewRegular1611.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$2(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding2 = getBinding();
        if (binding2 != null && (textViewRegular1610 = binding2.btnHindi) != null) {
            textViewRegular1610.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda5
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$3(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding3 = getBinding();
        if (binding3 != null && (textViewRegular169 = binding3.btnTamil) != null) {
            textViewRegular169.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda6
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$4(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding4 = getBinding();
        if (binding4 != null && (textViewRegular168 = binding4.btnBengali) != null) {
            textViewRegular168.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda7
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$5(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding5 = getBinding();
        if (binding5 != null && (textViewRegular167 = binding5.btnKannada) != null) {
            textViewRegular167.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda8
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$6(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding6 = getBinding();
        if (binding6 != null && (textViewRegular166 = binding6.btnMarathi) != null) {
            textViewRegular166.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda9
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$7(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding7 = getBinding();
        if (binding7 != null && (textViewRegular165 = binding7.btnTelugu) != null) {
            textViewRegular165.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda10
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$8(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding8 = getBinding();
        if (binding8 != null && (textViewRegular164 = binding8.btnGujarati) != null) {
            textViewRegular164.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda11
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$9(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding9 = getBinding();
        if (binding9 != null && (textViewRegular163 = binding9.btnPunjabi) != null) {
            textViewRegular163.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$10(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding10 = getBinding();
        if (binding10 != null && (textViewRegular162 = binding10.btnMalayalam) != null) {
            textViewRegular162.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$11(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding11 = getBinding();
        if (binding11 != null && (textViewRegular16 = binding11.btnOdia) != null) {
            textViewRegular16.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    LanguageBottomSheetFragment.registerOnClickListeners$lambda$12(this.f$0, view);
                }
            });
        }
        FragmentLanguageBottomSheetBinding binding12 = getBinding();
        if (binding12 == null || (imageView = binding12.ivClose) == null) {
            return;
        }
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$$ExternalSyntheticLambda4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                LanguageBottomSheetFragment.registerOnClickListeners$lambda$13(this.f$0, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$2(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("en");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$3(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("hi");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$4(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("ta");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$5(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("bn");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$6(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("kn");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$7(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("mr");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$8(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("te");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$9(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("gu");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$10(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("pa");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$11(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("ml");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$12(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.changeLanguage("or");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void registerOnClickListeners$lambda$13(LanguageBottomSheetFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.dismiss();
    }

    /* JADX INFO: renamed from: com.laborbook.base.languagemanager.LanguageBottomSheetFragment$changeLanguage$1 */
    /* JADX INFO: compiled from: LanguageBottomSheetFragment.kt */
    @Metadata(m2721d1 = {"\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\n"}, m2722d2 = {"<anonymous>", "", "Lkotlinx/coroutines/CoroutineScope;"}, m2723k = 3, m2724mv = {2, 0, 0}, m2726xi = 48)
    @DebugMetadata(m2734c = "com.laborbook.base.languagemanager.LanguageBottomSheetFragment$changeLanguage$1", m2735f = "LanguageBottomSheetFragment.kt", m2736i = {}, m2737l = {Opcodes.ARETURN}, m2738m = "invokeSuspend", m2739n = {}, m2740s = {})
    static final class C35871 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        final /* synthetic */ String $languageCode;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C35871(String str, Continuation<? super C35871> continuation) {
            super(2, continuation);
            this.$languageCode = str;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation<Unit> create(Object obj, Continuation<?> continuation) {
            return LanguageBottomSheetFragment.this.new C35871(this.$languageCode, continuation);
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(CoroutineScope coroutineScope, Continuation<? super Unit> continuation) {
            return ((C35871) create(coroutineScope, continuation)).invokeSuspend(Unit.INSTANCE);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            Object coroutine_suspended = IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i = this.label;
            if (i == 0) {
                ResultKt.throwOnFailure(obj);
                LanguageBottomSheetFragment.this.recordClickEvent(ConstantEventNames.SET_LANGUAGE, MapsKt.hashMapOf(new Pair("language", this.$languageCode)));
                Context context = LanguageBottomSheetFragment.this.getContext();
                if (context != null) {
                    LanguageBottomSheetFragment languageBottomSheetFragment = LanguageBottomSheetFragment.this;
                    String str = this.$languageCode;
                    LanguageManager languageManager = languageBottomSheetFragment.getLanguageManager();
                    this.label = 1;
                    if (languageManager.setLocale(context, str, this) == coroutine_suspended) {
                        return coroutine_suspended;
                    }
                }
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
            }
            FragmentActivity activity = LanguageBottomSheetFragment.this.getActivity();
            if (activity != null) {
                activity.recreate();
            }
            LanguageBottomSheetFragment.this.dismiss();
            return Unit.INSTANCE;
        }
    }

    private final void changeLanguage(String languageCode) {
        BuildersKt__Builders_commonKt.launch$default(LifecycleOwnerKt.getLifecycleScope(this), null, null, new C35871(languageCode, null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public final void markSelected(String languageCode) {
        ContextCompat.getDrawable(requireContext(), C3577R.drawable.ic_language_selected);
        int i = C3577R.drawable.rounded_border_edittext_background_selected_100;
        int i2 = C3577R.drawable.rounded_border_edittext_background_100;
        switch (languageCode.hashCode()) {
            case 3148:
                if (languageCode.equals("bn")) {
                    FragmentLanguageBottomSheetBinding binding = getBinding();
                    markSelected$setViewBackground(i, i2, binding != null ? binding.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding2 = getBinding();
                    markSelected$setViewBackground(i, i2, binding2 != null ? binding2.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding3 = getBinding();
                    markSelected$setViewBackground(i, i2, binding3 != null ? binding3.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding4 = getBinding();
                    markSelected$setViewBackground(i, i2, binding4 != null ? binding4.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding5 = getBinding();
                    markSelected$setViewBackground(i, i2, binding5 != null ? binding5.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding6 = getBinding();
                    markSelected$setViewBackground(i, i2, binding6 != null ? binding6.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding7 = getBinding();
                    markSelected$setViewBackground(i, i2, binding7 != null ? binding7.btnBengali : null, true);
                    FragmentLanguageBottomSheetBinding binding8 = getBinding();
                    markSelected$setViewBackground(i, i2, binding8 != null ? binding8.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding9 = getBinding();
                    markSelected$setViewBackground(i, i2, binding9 != null ? binding9.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding10 = getBinding();
                    markSelected$setViewBackground(i, i2, binding10 != null ? binding10.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding11 = getBinding();
                    markSelected$setViewBackground(i, i2, binding11 != null ? binding11.btnOdia : null, false);
                    return;
                }
                break;
            case 3241:
                if (languageCode.equals("en")) {
                    FragmentLanguageBottomSheetBinding binding12 = getBinding();
                    markSelected$setViewBackground(i, i2, binding12 != null ? binding12.btnEnglish : null, true);
                    FragmentLanguageBottomSheetBinding binding13 = getBinding();
                    markSelected$setViewBackground(i, i2, binding13 != null ? binding13.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding14 = getBinding();
                    markSelected$setViewBackground(i, i2, binding14 != null ? binding14.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding15 = getBinding();
                    markSelected$setViewBackground(i, i2, binding15 != null ? binding15.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding16 = getBinding();
                    markSelected$setViewBackground(i, i2, binding16 != null ? binding16.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding17 = getBinding();
                    markSelected$setViewBackground(i, i2, binding17 != null ? binding17.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding18 = getBinding();
                    markSelected$setViewBackground(i, i2, binding18 != null ? binding18.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding19 = getBinding();
                    markSelected$setViewBackground(i, i2, binding19 != null ? binding19.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding20 = getBinding();
                    markSelected$setViewBackground(i, i2, binding20 != null ? binding20.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding21 = getBinding();
                    markSelected$setViewBackground(i, i2, binding21 != null ? binding21.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding22 = getBinding();
                    markSelected$setViewBackground(i, i2, binding22 != null ? binding22.btnOdia : null, false);
                    return;
                }
                break;
            case 3310:
                if (languageCode.equals("gu")) {
                    FragmentLanguageBottomSheetBinding binding23 = getBinding();
                    markSelected$setViewBackground(i, i2, binding23 != null ? binding23.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding24 = getBinding();
                    markSelected$setViewBackground(i, i2, binding24 != null ? binding24.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding25 = getBinding();
                    markSelected$setViewBackground(i, i2, binding25 != null ? binding25.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding26 = getBinding();
                    markSelected$setViewBackground(i, i2, binding26 != null ? binding26.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding27 = getBinding();
                    markSelected$setViewBackground(i, i2, binding27 != null ? binding27.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding28 = getBinding();
                    markSelected$setViewBackground(i, i2, binding28 != null ? binding28.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding29 = getBinding();
                    markSelected$setViewBackground(i, i2, binding29 != null ? binding29.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding30 = getBinding();
                    markSelected$setViewBackground(i, i2, binding30 != null ? binding30.btnGujarati : null, true);
                    FragmentLanguageBottomSheetBinding binding31 = getBinding();
                    markSelected$setViewBackground(i, i2, binding31 != null ? binding31.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding32 = getBinding();
                    markSelected$setViewBackground(i, i2, binding32 != null ? binding32.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding33 = getBinding();
                    markSelected$setViewBackground(i, i2, binding33 != null ? binding33.btnOdia : null, false);
                    return;
                }
                break;
            case 3329:
                if (languageCode.equals("hi")) {
                    FragmentLanguageBottomSheetBinding binding34 = getBinding();
                    markSelected$setViewBackground(i, i2, binding34 != null ? binding34.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding35 = getBinding();
                    markSelected$setViewBackground(i, i2, binding35 != null ? binding35.btnHindi : null, true);
                    FragmentLanguageBottomSheetBinding binding36 = getBinding();
                    markSelected$setViewBackground(i, i2, binding36 != null ? binding36.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding37 = getBinding();
                    markSelected$setViewBackground(i, i2, binding37 != null ? binding37.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding38 = getBinding();
                    markSelected$setViewBackground(i, i2, binding38 != null ? binding38.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding39 = getBinding();
                    markSelected$setViewBackground(i, i2, binding39 != null ? binding39.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding40 = getBinding();
                    markSelected$setViewBackground(i, i2, binding40 != null ? binding40.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding41 = getBinding();
                    markSelected$setViewBackground(i, i2, binding41 != null ? binding41.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding42 = getBinding();
                    markSelected$setViewBackground(i, i2, binding42 != null ? binding42.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding43 = getBinding();
                    markSelected$setViewBackground(i, i2, binding43 != null ? binding43.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding44 = getBinding();
                    markSelected$setViewBackground(i, i2, binding44 != null ? binding44.btnOdia : null, false);
                    return;
                }
                break;
            case 3427:
                if (languageCode.equals("kn")) {
                    FragmentLanguageBottomSheetBinding binding45 = getBinding();
                    markSelected$setViewBackground(i, i2, binding45 != null ? binding45.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding46 = getBinding();
                    markSelected$setViewBackground(i, i2, binding46 != null ? binding46.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding47 = getBinding();
                    markSelected$setViewBackground(i, i2, binding47 != null ? binding47.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding48 = getBinding();
                    markSelected$setViewBackground(i, i2, binding48 != null ? binding48.btnKannada : null, true);
                    FragmentLanguageBottomSheetBinding binding49 = getBinding();
                    markSelected$setViewBackground(i, i2, binding49 != null ? binding49.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding50 = getBinding();
                    markSelected$setViewBackground(i, i2, binding50 != null ? binding50.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding51 = getBinding();
                    markSelected$setViewBackground(i, i2, binding51 != null ? binding51.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding52 = getBinding();
                    markSelected$setViewBackground(i, i2, binding52 != null ? binding52.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding53 = getBinding();
                    markSelected$setViewBackground(i, i2, binding53 != null ? binding53.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding54 = getBinding();
                    markSelected$setViewBackground(i, i2, binding54 != null ? binding54.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding55 = getBinding();
                    markSelected$setViewBackground(i, i2, binding55 != null ? binding55.btnOdia : null, false);
                    return;
                }
                break;
            case 3487:
                if (languageCode.equals("ml")) {
                    FragmentLanguageBottomSheetBinding binding56 = getBinding();
                    markSelected$setViewBackground(i, i2, binding56 != null ? binding56.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding57 = getBinding();
                    markSelected$setViewBackground(i, i2, binding57 != null ? binding57.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding58 = getBinding();
                    markSelected$setViewBackground(i, i2, binding58 != null ? binding58.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding59 = getBinding();
                    markSelected$setViewBackground(i, i2, binding59 != null ? binding59.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding60 = getBinding();
                    markSelected$setViewBackground(i, i2, binding60 != null ? binding60.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding61 = getBinding();
                    markSelected$setViewBackground(i, i2, binding61 != null ? binding61.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding62 = getBinding();
                    markSelected$setViewBackground(i, i2, binding62 != null ? binding62.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding63 = getBinding();
                    markSelected$setViewBackground(i, i2, binding63 != null ? binding63.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding64 = getBinding();
                    markSelected$setViewBackground(i, i2, binding64 != null ? binding64.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding65 = getBinding();
                    markSelected$setViewBackground(i, i2, binding65 != null ? binding65.btnMalayalam : null, true);
                    FragmentLanguageBottomSheetBinding binding66 = getBinding();
                    markSelected$setViewBackground(i, i2, binding66 != null ? binding66.btnOdia : null, false);
                    return;
                }
                break;
            case 3493:
                if (languageCode.equals("mr")) {
                    FragmentLanguageBottomSheetBinding binding67 = getBinding();
                    markSelected$setViewBackground(i, i2, binding67 != null ? binding67.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding68 = getBinding();
                    markSelected$setViewBackground(i, i2, binding68 != null ? binding68.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding69 = getBinding();
                    markSelected$setViewBackground(i, i2, binding69 != null ? binding69.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding70 = getBinding();
                    markSelected$setViewBackground(i, i2, binding70 != null ? binding70.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding71 = getBinding();
                    markSelected$setViewBackground(i, i2, binding71 != null ? binding71.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding72 = getBinding();
                    markSelected$setViewBackground(i, i2, binding72 != null ? binding72.btnMarathi : null, true);
                    FragmentLanguageBottomSheetBinding binding73 = getBinding();
                    markSelected$setViewBackground(i, i2, binding73 != null ? binding73.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding74 = getBinding();
                    markSelected$setViewBackground(i, i2, binding74 != null ? binding74.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding75 = getBinding();
                    markSelected$setViewBackground(i, i2, binding75 != null ? binding75.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding76 = getBinding();
                    markSelected$setViewBackground(i, i2, binding76 != null ? binding76.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding77 = getBinding();
                    markSelected$setViewBackground(i, i2, binding77 != null ? binding77.btnOdia : null, false);
                    return;
                }
                break;
            case 3555:
                if (languageCode.equals("or")) {
                    FragmentLanguageBottomSheetBinding binding78 = getBinding();
                    markSelected$setViewBackground(i, i2, binding78 != null ? binding78.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding79 = getBinding();
                    markSelected$setViewBackground(i, i2, binding79 != null ? binding79.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding80 = getBinding();
                    markSelected$setViewBackground(i, i2, binding80 != null ? binding80.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding81 = getBinding();
                    markSelected$setViewBackground(i, i2, binding81 != null ? binding81.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding82 = getBinding();
                    markSelected$setViewBackground(i, i2, binding82 != null ? binding82.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding83 = getBinding();
                    markSelected$setViewBackground(i, i2, binding83 != null ? binding83.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding84 = getBinding();
                    markSelected$setViewBackground(i, i2, binding84 != null ? binding84.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding85 = getBinding();
                    markSelected$setViewBackground(i, i2, binding85 != null ? binding85.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding86 = getBinding();
                    markSelected$setViewBackground(i, i2, binding86 != null ? binding86.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding87 = getBinding();
                    markSelected$setViewBackground(i, i2, binding87 != null ? binding87.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding88 = getBinding();
                    markSelected$setViewBackground(i, i2, binding88 != null ? binding88.btnOdia : null, true);
                    return;
                }
                break;
            case 3569:
                if (languageCode.equals("pa")) {
                    FragmentLanguageBottomSheetBinding binding89 = getBinding();
                    markSelected$setViewBackground(i, i2, binding89 != null ? binding89.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding90 = getBinding();
                    markSelected$setViewBackground(i, i2, binding90 != null ? binding90.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding91 = getBinding();
                    markSelected$setViewBackground(i, i2, binding91 != null ? binding91.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding92 = getBinding();
                    markSelected$setViewBackground(i, i2, binding92 != null ? binding92.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding93 = getBinding();
                    markSelected$setViewBackground(i, i2, binding93 != null ? binding93.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding94 = getBinding();
                    markSelected$setViewBackground(i, i2, binding94 != null ? binding94.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding95 = getBinding();
                    markSelected$setViewBackground(i, i2, binding95 != null ? binding95.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding96 = getBinding();
                    markSelected$setViewBackground(i, i2, binding96 != null ? binding96.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding97 = getBinding();
                    markSelected$setViewBackground(i, i2, binding97 != null ? binding97.btnPunjabi : null, true);
                    FragmentLanguageBottomSheetBinding binding98 = getBinding();
                    markSelected$setViewBackground(i, i2, binding98 != null ? binding98.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding99 = getBinding();
                    markSelected$setViewBackground(i, i2, binding99 != null ? binding99.btnOdia : null, false);
                    return;
                }
                break;
            case 3693:
                if (languageCode.equals("ta")) {
                    FragmentLanguageBottomSheetBinding binding100 = getBinding();
                    markSelected$setViewBackground(i, i2, binding100 != null ? binding100.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding101 = getBinding();
                    markSelected$setViewBackground(i, i2, binding101 != null ? binding101.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding102 = getBinding();
                    markSelected$setViewBackground(i, i2, binding102 != null ? binding102.btnTamil : null, true);
                    FragmentLanguageBottomSheetBinding binding103 = getBinding();
                    markSelected$setViewBackground(i, i2, binding103 != null ? binding103.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding104 = getBinding();
                    markSelected$setViewBackground(i, i2, binding104 != null ? binding104.btnTelugu : null, false);
                    FragmentLanguageBottomSheetBinding binding105 = getBinding();
                    markSelected$setViewBackground(i, i2, binding105 != null ? binding105.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding106 = getBinding();
                    markSelected$setViewBackground(i, i2, binding106 != null ? binding106.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding107 = getBinding();
                    markSelected$setViewBackground(i, i2, binding107 != null ? binding107.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding108 = getBinding();
                    markSelected$setViewBackground(i, i2, binding108 != null ? binding108.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding109 = getBinding();
                    markSelected$setViewBackground(i, i2, binding109 != null ? binding109.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding110 = getBinding();
                    markSelected$setViewBackground(i, i2, binding110 != null ? binding110.btnOdia : null, false);
                    return;
                }
                break;
            case 3697:
                if (languageCode.equals("te")) {
                    FragmentLanguageBottomSheetBinding binding111 = getBinding();
                    markSelected$setViewBackground(i, i2, binding111 != null ? binding111.btnEnglish : null, false);
                    FragmentLanguageBottomSheetBinding binding112 = getBinding();
                    markSelected$setViewBackground(i, i2, binding112 != null ? binding112.btnHindi : null, false);
                    FragmentLanguageBottomSheetBinding binding113 = getBinding();
                    markSelected$setViewBackground(i, i2, binding113 != null ? binding113.btnTamil : null, false);
                    FragmentLanguageBottomSheetBinding binding114 = getBinding();
                    markSelected$setViewBackground(i, i2, binding114 != null ? binding114.btnKannada : null, false);
                    FragmentLanguageBottomSheetBinding binding115 = getBinding();
                    markSelected$setViewBackground(i, i2, binding115 != null ? binding115.btnTelugu : null, true);
                    FragmentLanguageBottomSheetBinding binding116 = getBinding();
                    markSelected$setViewBackground(i, i2, binding116 != null ? binding116.btnMarathi : null, false);
                    FragmentLanguageBottomSheetBinding binding117 = getBinding();
                    markSelected$setViewBackground(i, i2, binding117 != null ? binding117.btnBengali : null, false);
                    FragmentLanguageBottomSheetBinding binding118 = getBinding();
                    markSelected$setViewBackground(i, i2, binding118 != null ? binding118.btnGujarati : null, false);
                    FragmentLanguageBottomSheetBinding binding119 = getBinding();
                    markSelected$setViewBackground(i, i2, binding119 != null ? binding119.btnPunjabi : null, false);
                    FragmentLanguageBottomSheetBinding binding120 = getBinding();
                    markSelected$setViewBackground(i, i2, binding120 != null ? binding120.btnMalayalam : null, false);
                    FragmentLanguageBottomSheetBinding binding121 = getBinding();
                    markSelected$setViewBackground(i, i2, binding121 != null ? binding121.btnOdia : null, false);
                    return;
                }
                break;
        }
        FragmentLanguageBottomSheetBinding binding122 = getBinding();
        markSelected$setViewBackground(i, i2, binding122 != null ? binding122.btnEnglish : null, true);
        FragmentLanguageBottomSheetBinding binding123 = getBinding();
        markSelected$setViewBackground(i, i2, binding123 != null ? binding123.btnHindi : null, false);
        FragmentLanguageBottomSheetBinding binding124 = getBinding();
        markSelected$setViewBackground(i, i2, binding124 != null ? binding124.btnTamil : null, false);
        FragmentLanguageBottomSheetBinding binding125 = getBinding();
        markSelected$setViewBackground(i, i2, binding125 != null ? binding125.btnKannada : null, false);
        FragmentLanguageBottomSheetBinding binding126 = getBinding();
        markSelected$setViewBackground(i, i2, binding126 != null ? binding126.btnTelugu : null, false);
        FragmentLanguageBottomSheetBinding binding127 = getBinding();
        markSelected$setViewBackground(i, i2, binding127 != null ? binding127.btnMarathi : null, false);
        FragmentLanguageBottomSheetBinding binding128 = getBinding();
        markSelected$setViewBackground(i, i2, binding128 != null ? binding128.btnBengali : null, false);
        FragmentLanguageBottomSheetBinding binding129 = getBinding();
        markSelected$setViewBackground(i, i2, binding129 != null ? binding129.btnGujarati : null, false);
        FragmentLanguageBottomSheetBinding binding130 = getBinding();
        markSelected$setViewBackground(i, i2, binding130 != null ? binding130.btnPunjabi : null, false);
        FragmentLanguageBottomSheetBinding binding131 = getBinding();
        markSelected$setViewBackground(i, i2, binding131 != null ? binding131.btnMalayalam : null, false);
        FragmentLanguageBottomSheetBinding binding132 = getBinding();
        markSelected$setViewBackground(i, i2, binding132 != null ? binding132.btnOdia : null, false);
    }

    private static final void markSelected$setDrawableAndBackground(LanguageBottomSheetFragment languageBottomSheetFragment, Drawable drawable, int i, int i2, TextView textView, int i3, boolean z) {
        if (textView != null) {
            Drawable drawable2 = ContextCompat.getDrawable(languageBottomSheetFragment.requireContext(), i3);
            Drawable drawable3 = textView.getCompoundDrawables()[1];
            Drawable drawable4 = textView.getCompoundDrawables()[3];
            if (!z) {
                drawable = null;
            }
            textView.setCompoundDrawablesWithIntrinsicBounds(drawable2, drawable3, drawable, drawable4);
            if (!z) {
                i = i2;
            }
            textView.setBackgroundResource(i);
        }
    }

    private static final void markSelected$setViewBackground(int i, int i2, View view, boolean z) {
        if (view != null) {
            if (!z) {
                i = i2;
            }
            view.setBackgroundResource(i);
        }
    }
}
