.class public final Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ComponentCallbackExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/laborbook/income/util/IncomeObserverUtil;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nComponentCallbackExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt$inject$1\n+ 2 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt\n+ 3 Scope.kt\norg/koin/core/scope/Scope\n*L\n1#1,77:1\n66#2:78\n140#3:79\n*S KotlinDebug\n*F\n+ 1 ComponentCallbackExt.kt\norg/koin/android/ext/android/ComponentCallbackExtKt$inject$1\n*L\n54#1:78\n54#1:79\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0002\u0008\u0002\n\u0002\u0010\u0000\n\u0000\u0010\u0000\u001a\u0002H\u0001\"\n\u0008\u0000\u0010\u0001\u0018\u0001*\u00020\u0002H\n\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "T",
        "",
        "org/koin/android/ext/android/ComponentCallbackExtKt$inject$1"
    }
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $parameters:Lkotlin/jvm/functions/Function0;

.field final synthetic $qualifier:Lorg/koin/core/qualifier/Qualifier;

.field final synthetic $this_inject:Landroid/content/ComponentCallbacks;


# direct methods
.method public constructor <init>(Landroid/content/ComponentCallbacks;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    iput-object p1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1;->$this_inject:Landroid/content/ComponentCallbacks;

    iput-object p2, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iput-object p3, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/laborbook/income/util/IncomeObserverUtil;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1;->$this_inject:Landroid/content/ComponentCallbacks;

    iget-object v1, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1;->$qualifier:Lorg/koin/core/qualifier/Qualifier;

    iget-object v2, p0, Lcom/laborbook/income/screen/details/fragment/TransactionDetailsBottomSheetFragment$special$$inlined$inject$default$1;->$parameters:Lkotlin/jvm/functions/Function0;

    .line 78
    invoke-static {v0}, Lorg/koin/android/ext/android/ComponentCallbackExtKt;->getDefaultScope(Landroid/content/ComponentCallbacks;)Lorg/koin/core/scope/Scope;

    move-result-object v0

    .line 79
    const-class v3, Lcom/laborbook/income/util/IncomeObserverUtil;

    invoke-static {v3}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v3

    invoke-virtual {v0, v3, v1, v2}, Lorg/koin/core/scope/Scope;->get(Lkotlin/reflect/KClass;Lorg/koin/core/qualifier/Qualifier;Lkotlin/jvm/functions/Function0;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
