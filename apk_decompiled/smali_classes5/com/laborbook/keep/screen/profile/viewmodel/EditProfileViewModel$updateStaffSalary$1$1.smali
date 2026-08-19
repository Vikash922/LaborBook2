.class final Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;
.super Ljava/lang/Object;
.source "EditProfileViewModel.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;

    invoke-direct {v0}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;-><init>()V

    sput-object v0, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;->INSTANCE:Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/boilerplate/network/model/NetworkResult<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 50
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 0

    .line 48
    check-cast p1, Lcom/boilerplate/network/model/NetworkResult;

    invoke-virtual {p0, p1, p2}, Lcom/laborbook/keep/screen/profile/viewmodel/EditProfileViewModel$updateStaffSalary$1$1;->emit(Lcom/boilerplate/network/model/NetworkResult;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
