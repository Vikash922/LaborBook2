.class public final synthetic Lcom/inmobi/media/ta;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/wa;)V
    .locals 7

    .line 1
    const-class v3, Lcom/inmobi/media/wa;

    const-string v5, "instantiateBillingClientV6(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient;"

    const/4 v6, 0x0

    const/4 v1, 0x1

    const-string v4, "instantiateBillingClientV6"

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Landroid/content/Context;

    .line 2
    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lkotlin/jvm/internal/FunctionReferenceImpl;->receiver:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/media/wa;

    .line 100
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/inmobi/media/wa;->a(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient;

    move-result-object p1

    return-object p1
.end method
