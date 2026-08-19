.class public final Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;
.super Lcom/laborbook/base/BaseBottomsheetFragment;
.source "LanguageBottomSheetFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/laborbook/base/BaseBottomsheetFragment<",
        "Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLanguageBottomSheetFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LanguageBottomSheetFragment.kt\ncom/laborbook/base/languagemanager/LanguageBottomSheetFragment\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,370:1\n50#2,5:371\n216#3,2:376\n*S KotlinDebug\n*F\n+ 1 LanguageBottomSheetFragment.kt\ncom/laborbook/base/languagemanager/LanguageBottomSheetFragment\n*L\n35#1:371,5\n86#1:376,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 \"2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\"B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J&\u0010\t\u001a\u0004\u0018\u00010\u00022\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J&\u0010\u0018\u001a\u0004\u0018\u00010\u00192\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u001a\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u00192\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0016J\u0008\u0010\u001c\u001a\u00020\u0017H\u0002J\u0008\u0010\u001d\u001a\u00020\u0017H\u0002J\u0008\u0010\u001e\u001a\u00020\u0017H\u0002J\u0010\u0010\u001f\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u0006H\u0002J\u0010\u0010!\u001a\u00020\u00172\u0006\u0010 \u001a\u00020\u0006H\u0002R\u0014\u0010\u0005\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u001b\u0010\u0010\u001a\u00020\u00118BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006#"
    }
    d2 = {
        "Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;",
        "Lcom/laborbook/base/BaseBottomsheetFragment;",
        "Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;",
        "<init>",
        "()V",
        "screenName",
        "",
        "getScreenName",
        "()Ljava/lang/String;",
        "getViewBinding",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "languageManager",
        "Lcom/laborbook/base/languagemanager/LanguageManager;",
        "getLanguageManager",
        "()Lcom/laborbook/base/languagemanager/LanguageManager;",
        "languageManager$delegate",
        "Lkotlin/Lazy;",
        "onStart",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "onViewCreated",
        "view",
        "setupNewLanguageAvatars",
        "loadSavedLanguage",
        "registerOnClickListeners",
        "changeLanguage",
        "languageCode",
        "markSelected",
        "Companion",
        "base_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;


# instance fields
.field private final languageManager$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$2ym8wK7baPMCzalOvOf1M1_gQZg(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$11(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3R26U_JTSh-wP1VSx3ahnjhAdmQ(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$2(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8Dolrz8gmR8maSkWKo5KKkfU_7s(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$3(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$8L2XlROCykRCE7oH417SS33lsog(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$10(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CZUZ4e1n48_aA3yYt5nGWnhd3qY(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$6(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fep4q3POhcmnoeb7nBNbG2WZAA8(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$13(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KvXBqy8LZ3gMQ1JYYEAOUvZl-gQ(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$9(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OFOt9_w_SbuliA8FKzLZsPe2CFg(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$4(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P1iWFofrEQQH2sJQIMkB3OqhFWs(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$8(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WSKccngLFF6gh1G_uGjxS2t2Ctk(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$12(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X_dMPXrkmgm_HIGf8EWEtV_ToK0(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$7(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hR9_4uxloQOz0im9UKPjq38KXDg(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners$lambda$5(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->Companion:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 22
    invoke-direct {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;-><init>()V

    .line 35
    move-object v0, p0

    check-cast v0, Landroid/content/ComponentCallbacks;

    .line 373
    sget-object v1, Lkotlin/LazyThreadSafetyMode;->SYNCHRONIZED:Lkotlin/LazyThreadSafetyMode;

    .line 375
    new-instance v2, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$special$$inlined$inject$default$1;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$special$$inlined$inject$default$1;-><init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-static {v1, v2}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    .line 35
    iput-object v0, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->languageManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getLanguageManager(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)Lcom/laborbook/base/languagemanager/LanguageManager;
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getLanguageManager()Lcom/laborbook/base/languagemanager/LanguageManager;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$markSelected(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Ljava/lang/String;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected(Ljava/lang/String;)V

    return-void
.end method

.method private final changeLanguage(Ljava/lang/String;)V
    .locals 7

    .line 174
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$changeLanguage$1;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final getLanguageManager()Lcom/laborbook/base/languagemanager/LanguageManager;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->languageManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/languagemanager/LanguageManager;

    return-object v0
.end method

.method private final loadSavedLanguage()V
    .locals 7

    .line 116
    move-object v0, p0

    check-cast v0, Landroidx/lifecycle/LifecycleOwner;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$loadSavedLanguage$1;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Lkotlin/coroutines/Continuation;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final markSelected(Ljava/lang/String;)V
    .locals 6

    .line 184
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/laborbook/base/R$drawable;->ic_language_selected:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 185
    sget v0, Lcom/laborbook/base/R$drawable;->rounded_border_edittext_background_selected_100:I

    .line 186
    sget v1, Lcom/laborbook/base/R$drawable;->rounded_border_edittext_background_100:I

    .line 210
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_6e

    :sswitch_0
    const-string v2, "te"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_6e

    .line 264
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_0

    :cond_1
    move-object p1, v5

    :goto_0
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 265
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_2

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1

    :cond_2
    move-object p1, v5

    :goto_1
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 266
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_3

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2

    :cond_3
    move-object p1, v5

    :goto_2
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 267
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3

    :cond_4
    move-object p1, v5

    :goto_3
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 268
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_4

    :cond_5
    move-object p1, v5

    :goto_4
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 269
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_6

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_5

    :cond_6
    move-object p1, v5

    :goto_5
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 270
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_7

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_6

    :cond_7
    move-object p1, v5

    :goto_6
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 271
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_8

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_7

    :cond_8
    move-object p1, v5

    :goto_7
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 272
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_9

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_8

    :cond_9
    move-object p1, v5

    :goto_8
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 273
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_9

    :cond_a
    move-object p1, v5

    :goto_9
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 274
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_b

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_b
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_1
    const-string v2, "ta"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_6e

    .line 238
    :cond_c
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_a

    :cond_d
    move-object p1, v5

    :goto_a
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 239
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_b

    :cond_e
    move-object p1, v5

    :goto_b
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 240
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_f

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_c

    :cond_f
    move-object p1, v5

    :goto_c
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 241
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_10

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_d

    :cond_10
    move-object p1, v5

    :goto_d
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 242
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_11

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_e

    :cond_11
    move-object p1, v5

    :goto_e
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 243
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_12

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_f

    :cond_12
    move-object p1, v5

    :goto_f
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 244
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_13

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_10

    :cond_13
    move-object p1, v5

    :goto_10
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 245
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_14

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_11

    :cond_14
    move-object p1, v5

    :goto_11
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 246
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_15

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_12

    :cond_15
    move-object p1, v5

    :goto_12
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 247
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_16

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_13

    :cond_16
    move-object p1, v5

    :goto_13
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 248
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_17

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_17
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_2
    const-string v2, "pa"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_18

    goto/16 :goto_6e

    .line 316
    :cond_18
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_19

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_14

    :cond_19
    move-object p1, v5

    :goto_14
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 317
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_15

    :cond_1a
    move-object p1, v5

    :goto_15
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 318
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_1b

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_16

    :cond_1b
    move-object p1, v5

    :goto_16
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 319
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_1c

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_17

    :cond_1c
    move-object p1, v5

    :goto_17
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 320
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_1d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_18

    :cond_1d
    move-object p1, v5

    :goto_18
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 321
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_1e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_19

    :cond_1e
    move-object p1, v5

    :goto_19
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 322
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_1f

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1a

    :cond_1f
    move-object p1, v5

    :goto_1a
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 323
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_20

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1b

    :cond_20
    move-object p1, v5

    :goto_1b
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 324
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_21

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1c

    :cond_21
    move-object p1, v5

    :goto_1c
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 325
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_22

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1d

    :cond_22
    move-object p1, v5

    :goto_1d
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 326
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_23

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_23
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_3
    const-string v2, "or"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_24

    goto/16 :goto_6e

    .line 342
    :cond_24
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_25

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1e

    :cond_25
    move-object p1, v5

    :goto_1e
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 343
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_26

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1f

    :cond_26
    move-object p1, v5

    :goto_1f
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 344
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_27

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_20

    :cond_27
    move-object p1, v5

    :goto_20
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 345
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_28

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_21

    :cond_28
    move-object p1, v5

    :goto_21
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 346
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_29

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_22

    :cond_29
    move-object p1, v5

    :goto_22
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 347
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_2a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_23

    :cond_2a
    move-object p1, v5

    :goto_23
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 348
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_2b

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_24

    :cond_2b
    move-object p1, v5

    :goto_24
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 349
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_2c

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_25

    :cond_2c
    move-object p1, v5

    :goto_25
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 350
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_2d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_26

    :cond_2d
    move-object p1, v5

    :goto_26
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 351
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_2e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_27

    :cond_2e
    move-object p1, v5

    :goto_27
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 352
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_2f

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_2f
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_4
    const-string v2, "mr"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto/16 :goto_6e

    .line 277
    :cond_30
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_31

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_28

    :cond_31
    move-object p1, v5

    :goto_28
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 278
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_32

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_29

    :cond_32
    move-object p1, v5

    :goto_29
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 279
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_33

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2a

    :cond_33
    move-object p1, v5

    :goto_2a
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 280
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_34

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2b

    :cond_34
    move-object p1, v5

    :goto_2b
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 281
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_35

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2c

    :cond_35
    move-object p1, v5

    :goto_2c
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 282
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_36

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2d

    :cond_36
    move-object p1, v5

    :goto_2d
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 283
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_37

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2e

    :cond_37
    move-object p1, v5

    :goto_2e
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 284
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_38

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2f

    :cond_38
    move-object p1, v5

    :goto_2f
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 285
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_39

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_30

    :cond_39
    move-object p1, v5

    :goto_30
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 286
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_3a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_31

    :cond_3a
    move-object p1, v5

    :goto_31
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 287
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_3b

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_3b
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_5
    const-string v2, "ml"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3c

    goto/16 :goto_6e

    .line 329
    :cond_3c
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_3d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_32

    :cond_3d
    move-object p1, v5

    :goto_32
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 330
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_3e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_33

    :cond_3e
    move-object p1, v5

    :goto_33
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 331
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_3f

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_34

    :cond_3f
    move-object p1, v5

    :goto_34
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 332
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_40

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_35

    :cond_40
    move-object p1, v5

    :goto_35
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 333
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_41

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_36

    :cond_41
    move-object p1, v5

    :goto_36
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 334
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_42

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_37

    :cond_42
    move-object p1, v5

    :goto_37
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 335
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_43

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_38

    :cond_43
    move-object p1, v5

    :goto_38
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 336
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_44

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_39

    :cond_44
    move-object p1, v5

    :goto_39
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 337
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_45

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3a

    :cond_45
    move-object p1, v5

    :goto_3a
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 338
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_46

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3b

    :cond_46
    move-object p1, v5

    :goto_3b
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 339
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_47

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_47
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_6
    const-string v2, "kn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_48

    goto/16 :goto_6e

    .line 251
    :cond_48
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_49

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3c

    :cond_49
    move-object p1, v5

    :goto_3c
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 252
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_4a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3d

    :cond_4a
    move-object p1, v5

    :goto_3d
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 253
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_4b

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3e

    :cond_4b
    move-object p1, v5

    :goto_3e
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 254
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_4c

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3f

    :cond_4c
    move-object p1, v5

    :goto_3f
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 255
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_4d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_40

    :cond_4d
    move-object p1, v5

    :goto_40
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 256
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_4e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_41

    :cond_4e
    move-object p1, v5

    :goto_41
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 257
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_4f

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_42

    :cond_4f
    move-object p1, v5

    :goto_42
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 258
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_50

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_43

    :cond_50
    move-object p1, v5

    :goto_43
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 259
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_51

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_44

    :cond_51
    move-object p1, v5

    :goto_44
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 260
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_52

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_45

    :cond_52
    move-object p1, v5

    :goto_45
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 261
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_53

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_53
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_7
    const-string v2, "hi"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto/16 :goto_6e

    .line 225
    :cond_54
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_55

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_46

    :cond_55
    move-object p1, v5

    :goto_46
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 226
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_56

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_47

    :cond_56
    move-object p1, v5

    :goto_47
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 227
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_57

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_48

    :cond_57
    move-object p1, v5

    :goto_48
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 228
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_58

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_49

    :cond_58
    move-object p1, v5

    :goto_49
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 229
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_59

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_4a

    :cond_59
    move-object p1, v5

    :goto_4a
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 230
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_5a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_4b

    :cond_5a
    move-object p1, v5

    :goto_4b
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 231
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_5b

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_4c

    :cond_5b
    move-object p1, v5

    :goto_4c
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 232
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_5c

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_4d

    :cond_5c
    move-object p1, v5

    :goto_4d
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 233
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_5d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_4e

    :cond_5d
    move-object p1, v5

    :goto_4e
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 234
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_5e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_4f

    :cond_5e
    move-object p1, v5

    :goto_4f
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 235
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_5f

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_5f
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_8
    const-string v2, "gu"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_60

    goto/16 :goto_6e

    .line 303
    :cond_60
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_61

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_50

    :cond_61
    move-object p1, v5

    :goto_50
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 304
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_62

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_51

    :cond_62
    move-object p1, v5

    :goto_51
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 305
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_63

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_52

    :cond_63
    move-object p1, v5

    :goto_52
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 306
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_64

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_53

    :cond_64
    move-object p1, v5

    :goto_53
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 307
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_65

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_54

    :cond_65
    move-object p1, v5

    :goto_54
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 308
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_66

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_55

    :cond_66
    move-object p1, v5

    :goto_55
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 309
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_67

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_56

    :cond_67
    move-object p1, v5

    :goto_56
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 310
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_68

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_57

    :cond_68
    move-object p1, v5

    :goto_57
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 311
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_69

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_58

    :cond_69
    move-object p1, v5

    :goto_58
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 312
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_6a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_59

    :cond_6a
    move-object p1, v5

    :goto_59
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 313
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_6b

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_6b
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_9
    const-string v2, "en"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6c

    goto/16 :goto_6e

    .line 212
    :cond_6c
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_6d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_5a

    :cond_6d
    move-object p1, v5

    :goto_5a
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 213
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_6e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_5b

    :cond_6e
    move-object p1, v5

    :goto_5b
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 214
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_6f

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_5c

    :cond_6f
    move-object p1, v5

    :goto_5c
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 215
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_70

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_5d

    :cond_70
    move-object p1, v5

    :goto_5d
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 216
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_71

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_5e

    :cond_71
    move-object p1, v5

    :goto_5e
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 217
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_72

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_5f

    :cond_72
    move-object p1, v5

    :goto_5f
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 218
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_73

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_60

    :cond_73
    move-object p1, v5

    :goto_60
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 219
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_74

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_61

    :cond_74
    move-object p1, v5

    :goto_61
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 220
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_75

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_62

    :cond_75
    move-object p1, v5

    :goto_62
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 221
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_76

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_63

    :cond_76
    move-object p1, v5

    :goto_63
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 222
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_77

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_77
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 210
    :sswitch_a
    const-string v2, "bn"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_78

    goto/16 :goto_6e

    .line 290
    :cond_78
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_79

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_64

    :cond_79
    move-object p1, v5

    :goto_64
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 291
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_7a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_65

    :cond_7a
    move-object p1, v5

    :goto_65
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 292
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_7b

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_66

    :cond_7b
    move-object p1, v5

    :goto_66
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 293
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_7c

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_67

    :cond_7c
    move-object p1, v5

    :goto_67
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 294
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_7d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_68

    :cond_7d
    move-object p1, v5

    :goto_68
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 295
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_7e

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_69

    :cond_7e
    move-object p1, v5

    :goto_69
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 296
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_7f

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_6a

    :cond_7f
    move-object p1, v5

    :goto_6a
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 297
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_80

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_6b

    :cond_80
    move-object p1, v5

    :goto_6b
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 298
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_81

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_6c

    :cond_81
    move-object p1, v5

    :goto_6c
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 299
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_82

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_6d

    :cond_82
    move-object p1, v5

    :goto_6d
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 300
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_83

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_83
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    goto/16 :goto_79

    .line 356
    :goto_6e
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_84

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_6f

    :cond_84
    move-object p1, v5

    :goto_6f
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 357
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_85

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_70

    :cond_85
    move-object p1, v5

    :goto_70
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 358
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_86

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_71

    :cond_86
    move-object p1, v5

    :goto_71
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 359
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_87

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_72

    :cond_87
    move-object p1, v5

    :goto_72
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 360
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_88

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_73

    :cond_88
    move-object p1, v5

    :goto_73
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 361
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_89

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_74

    :cond_89
    move-object p1, v5

    :goto_74
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 362
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_8a

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_75

    :cond_8a
    move-object p1, v5

    :goto_75
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 363
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_8b

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_76

    :cond_8b
    move-object p1, v5

    :goto_76
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 364
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_8c

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_77

    :cond_8c
    move-object p1, v5

    :goto_77
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 365
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_8d

    iget-object p1, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_78

    :cond_8d
    move-object p1, v5

    :goto_78
    check-cast p1, Landroid/view/View;

    invoke-static {v0, v1, p1, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    .line 366
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_8e

    iget-object v5, p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    :cond_8e
    check-cast v5, Landroid/view/View;

    invoke-static {v0, v1, v5, v4}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->markSelected$setViewBackground(IILandroid/view/View;Z)V

    :goto_79
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc4c -> :sswitch_a
        0xca9 -> :sswitch_9
        0xcee -> :sswitch_8
        0xd01 -> :sswitch_7
        0xd63 -> :sswitch_6
        0xd9f -> :sswitch_5
        0xda5 -> :sswitch_4
        0xde3 -> :sswitch_3
        0xdf1 -> :sswitch_2
        0xe6d -> :sswitch_1
        0xe71 -> :sswitch_0
    .end sparse-switch
.end method

.method private static final markSelected$setDrawableAndBackground(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/graphics/drawable/Drawable;IILandroid/widget/TextView;IZ)V
    .locals 2

    if-eqz p4, :cond_2

    .line 192
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->requireContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p5}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 193
    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object p5

    const/4 v0, 0x1

    aget-object p5, p5, v0

    .line 194
    invoke-virtual {p4}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x3

    aget-object v0, v0, v1

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 198
    :goto_0
    invoke-virtual {p4, p0, p5, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    if-eqz p6, :cond_1

    goto :goto_1

    :cond_1
    move p2, p3

    .line 201
    :goto_1
    invoke-virtual {p4, p2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method private static final markSelected$setViewBackground(IILandroid/view/View;Z)V
    .locals 0

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    .line 206
    :goto_0
    invoke-virtual {p2, p0}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_1
    return-void
.end method

.method public static final newInstance()Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->Companion:Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;

    invoke-virtual {v0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$Companion;->newInstance()Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;

    move-result-object v0

    return-object v0
.end method

.method private final registerOnClickListeners()V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnEnglish:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda0;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnHindi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda5;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_2

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTamil:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_2

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda6;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_3

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnBengali:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda7;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnKannada:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_4

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda8;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    :cond_4
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMarathi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_5

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda9;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    :cond_5
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnTelugu:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_6

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda10;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    :cond_6
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_7

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_7

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda11;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    :cond_7
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_8

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_8

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda1;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    :cond_8
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_9

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_9

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda2;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    :cond_9
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_a

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    if-eqz v0, :cond_a

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda3;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    :cond_a
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v0

    check-cast v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v0, :cond_b

    iget-object v0, v0, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->ivClose:Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    new-instance v1, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$$ExternalSyntheticLambda4;-><init>(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_b
    return-void
.end method

.method private static final registerOnClickListeners$lambda$10(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    const-string p1, "pa"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$11(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    const-string p1, "ml"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$12(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    const-string p1, "or"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$13(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->dismiss()V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$2(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    const-string p1, "en"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$3(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    const-string p1, "hi"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$4(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    const-string p1, "ta"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$5(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    const-string p1, "bn"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$6(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 141
    const-string p1, "kn"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$7(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    const-string p1, "mr"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$8(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    const-string p1, "te"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private static final registerOnClickListeners$lambda$9(Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    const-string p1, "gu"

    invoke-direct {p0, p1}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->changeLanguage(Ljava/lang/String;)V

    return-void
.end method

.method private final setupNewLanguageAvatars()V
    .locals 13

    const/4 v0, 0x4

    .line 77
    new-array v0, v0, [Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnGujarati:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "\u0a97\u0ac1"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 78
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnPunjabi:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    const-string v3, "\u0a2a\u0a70"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    .line 79
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnMalayalam:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_2

    :cond_2
    move-object v1, v2

    :goto_2
    const-string v3, "\u0d2e"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 80
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object v1

    check-cast v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz v1, :cond_3

    iget-object v1, v1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->btnOdia:Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    goto :goto_3

    :cond_3
    move-object v1, v2

    :goto_3
    const-string v3, "\u0b13"

    invoke-static {v1, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v1

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 76
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    const/16 v1, 0x1c

    int-to-float v1, v1

    .line 82
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 83
    const-string v3, "#F1F8FF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v9

    .line 84
    const-string v3, "#0752AD"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v10

    .line 376
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 86
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object v11, v4

    check-cast v11, Lcom/boilerplate/uikit/views/textviews/text16/TextViewRegular16;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 88
    new-instance v12, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;

    move-object v3, v12

    move v4, v10

    move-object v5, p0

    move v6, v9

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment$setupNewLanguageAvatars$1$1$drawable$1;-><init>(ILcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;ILjava/lang/String;I)V

    .line 110
    instance-of v3, v11, Landroid/widget/TextView;

    if-eqz v3, :cond_5

    check-cast v11, Landroid/widget/TextView;

    goto :goto_5

    :cond_5
    move-object v11, v2

    :goto_5
    if-eqz v11, :cond_4

    check-cast v12, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v12, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_6
    return-void
.end method


# virtual methods
.method public getScreenName()Ljava/lang/String;
    .locals 1

    .line 25
    const-string v0, "language_bs"

    return-object v0
.end method

.method public bridge synthetic getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroidx/viewbinding/ViewBinding;
    .locals 0

    .line 22
    invoke-virtual {p0, p1, p2, p3}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    move-result-object p1

    check-cast p1, Landroidx/viewbinding/ViewBinding;

    return-object p1
.end method

.method public getViewBinding(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 32
    invoke-static {p1, p2, p3}, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/laborbook/base/BaseBottomsheetFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 65
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getBinding()Landroidx/viewbinding/ViewBinding;

    move-result-object p1

    check-cast p1, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/laborbook/base/databinding/FragmentLanguageBottomSheetBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method public onStart()V
    .locals 4

    .line 50
    invoke-super {p0}, Lcom/laborbook/base/BaseBottomsheetFragment;->onStart()V

    .line 51
    invoke-virtual {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.google.android.material.bottomsheet.BottomSheetDialog"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 52
    sget v1, Lcom/google/android/material/R$id;->design_bottom_sheet:I

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type android.view.View"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-static {v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->from(Landroid/view/View;)Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    move-result-object v2

    const-string v3, "from(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, 0x3

    .line 55
    invoke-virtual {v2, v1}, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;->setState(I)V

    .line 57
    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1, p2}, Lcom/laborbook/base/BaseBottomsheetFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 70
    invoke-direct {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->registerOnClickListeners()V

    .line 71
    invoke-direct {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->setupNewLanguageAvatars()V

    .line 72
    invoke-direct {p0}, Lcom/laborbook/base/languagemanager/LanguageBottomSheetFragment;->loadSavedLanguage()V

    return-void
.end method
