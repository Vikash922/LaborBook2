.class public final Lcom/laborbook/keep/model/subscription/SubscriptionPlan;
.super Ljava/lang/Object;
.source "SubscriptionPlan.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008)\u0008\u0086\u0008\u0018\u00002\u00020\u0001Bg\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0008\u0012\u0006\u0010\r\u001a\u00020\u0008\u0012\u0006\u0010\u000e\u001a\u00020\u000f\u0012\u0006\u0010\u0010\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J\t\u0010)\u001a\u00020\u0003H\u00c6\u0003J\t\u0010*\u001a\u00020\u0003H\u00c6\u0003J\t\u0010+\u001a\u00020\u0003H\u00c6\u0003J\t\u0010,\u001a\u00020\u0003H\u00c6\u0003J\t\u0010-\u001a\u00020\u0008H\u00c6\u0003J\t\u0010.\u001a\u00020\u0008H\u00c6\u0003J\t\u0010/\u001a\u00020\u0003H\u00c6\u0003J\t\u00100\u001a\u00020\u0003H\u00c6\u0003J\t\u00101\u001a\u00020\u0008H\u00c6\u0003J\t\u00102\u001a\u00020\u0008H\u00c6\u0003J\t\u00103\u001a\u00020\u000fH\u00c6\u0003J\t\u00104\u001a\u00020\u0011H\u00c6\u0003J\u0081\u0001\u00105\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\u00082\u0008\u0008\u0002\u0010\n\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00082\u0008\u0008\u0002\u0010\r\u001a\u00020\u00082\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011H\u00c6\u0001J\u0013\u00106\u001a\u00020\u00112\u0008\u00107\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u00108\u001a\u00020\u0008H\u00d6\u0001J\t\u00109\u001a\u00020\u0003H\u00d6\u0001R\u0016\u0010\u0002\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R\u0016\u0010\u0004\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0015R\u0016\u0010\u0005\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0015R\u0016\u0010\u0006\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0015R\u0016\u0010\u0007\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\t\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u001aR\u0016\u0010\n\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0015R\u0016\u0010\u000b\u001a\u00020\u00038\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\u0015R\u0016\u0010\u000c\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001aR\u0016\u0010\r\u001a\u00020\u00088\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001f\u0010\u001aR\u0016\u0010\u000e\u001a\u00020\u000f8\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0016\u0010\u0010\u001a\u00020\u00118\u0006X\u0087\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\"R\u0011\u0010#\u001a\u00020\u00088F\u00a2\u0006\u0006\u001a\u0004\u0008$\u0010\u001aR\u0011\u0010%\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008&\u0010\"R\u0011\u0010\'\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008(\u0010\"\u00a8\u0006:"
    }
    d2 = {
        "Lcom/laborbook/keep/model/subscription/SubscriptionPlan;",
        "",
        "id",
        "",
        "pgPlanId",
        "name",
        "description",
        "price",
        "",
        "discountedPrice",
        "currency",
        "interval",
        "intervalCount",
        "trialDays",
        "metaData",
        "Lcom/laborbook/keep/model/subscription/MetaData;",
        "isActive",
        "",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/laborbook/keep/model/subscription/MetaData;Z)V",
        "getId",
        "()Ljava/lang/String;",
        "getPgPlanId",
        "getName",
        "getDescription",
        "getPrice",
        "()I",
        "getDiscountedPrice",
        "getCurrency",
        "getInterval",
        "getIntervalCount",
        "getTrialDays",
        "getMetaData",
        "()Lcom/laborbook/keep/model/subscription/MetaData;",
        "()Z",
        "discountPercent",
        "getDiscountPercent",
        "hasDiscount",
        "getHasDiscount",
        "hasTrial",
        "getHasTrial",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "component7",
        "component8",
        "component9",
        "component10",
        "component11",
        "component12",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
        "keep_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final currency:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "currency"
    .end annotation
.end field

.field private final description:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "description"
    .end annotation
.end field

.field private final discountedPrice:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "discounted_price"
    .end annotation
.end field

.field private final id:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private final interval:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval"
    .end annotation
.end field

.field private final intervalCount:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "interval_count"
    .end annotation
.end field

.field private final isActive:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "is_active"
    .end annotation
.end field

.field private final metaData:Lcom/laborbook/keep/model/subscription/MetaData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "meta_data"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field private final pgPlanId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "pg_plan_id"
    .end annotation
.end field

.field private final price:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "price"
    .end annotation
.end field

.field private final trialDays:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trial_days"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/laborbook/keep/model/subscription/MetaData;Z)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pgPlanId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interval"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaData"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    .line 9
    iput-object p2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    .line 15
    iput-object p4, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    .line 18
    iput p5, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    .line 21
    iput p6, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    .line 24
    iput-object p7, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    .line 27
    iput-object p8, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    .line 30
    iput p9, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    .line 33
    iput p10, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    .line 36
    iput-object p11, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    .line 39
    iput-boolean p12, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    return-void
.end method

.method public static synthetic copy$default(Lcom/laborbook/keep/model/subscription/SubscriptionPlan;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/laborbook/keep/model/subscription/MetaData;ZILjava/lang/Object;)Lcom/laborbook/keep/model/subscription/SubscriptionPlan;
    .locals 13

    move-object v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object/from16 v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget v6, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget v7, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-object v8, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    goto :goto_6

    :cond_6
    move-object/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget v10, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget v11, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    goto :goto_9

    :cond_9
    move/from16 v11, p10

    :goto_9
    and-int/lit16 v12, v1, 0x400

    if-eqz v12, :cond_a

    iget-object v12, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    goto :goto_a

    :cond_a
    move-object/from16 v12, p11

    :goto_a
    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_b

    iget-boolean v1, v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    goto :goto_b

    :cond_b
    move/from16 v1, p12

    :goto_b
    move-object p1, v2

    move-object p2, v3

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move-object/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move/from16 p10, v11

    move-object/from16 p11, v12

    move/from16 p12, v1

    invoke-virtual/range {p0 .. p12}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/laborbook/keep/model/subscription/MetaData;Z)Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component10()I
    .locals 1

    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    return v0
.end method

.method public final component11()Lcom/laborbook/keep/model/subscription/MetaData;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    return-object v0
.end method

.method public final component12()Z
    .locals 1

    iget-boolean v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    return v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final component8()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public final component9()I
    .locals 1

    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    return v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/laborbook/keep/model/subscription/MetaData;Z)Lcom/laborbook/keep/model/subscription/SubscriptionPlan;
    .locals 14

    const-string v0, "id"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pgPlanId"

    move-object/from16 v3, p2

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currency"

    move-object/from16 v8, p7

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "interval"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metaData"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    move-object v1, v0

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v13, p12

    invoke-direct/range {v1 .. v13}, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;IILcom/laborbook/keep/model/subscription/MetaData;Z)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    iget v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    iget v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    if-eq v1, v3, :cond_7

    return v2

    :cond_7
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    iget v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    if-eq v1, v3, :cond_a

    return v2

    :cond_a
    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    iget v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    if-eq v1, v3, :cond_b

    return v2

    :cond_b
    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    iget-object v3, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    return v2

    :cond_c
    iget-boolean v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    iget-boolean p1, p1, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    if-eq v1, p1, :cond_d

    return v2

    :cond_d
    return v0
.end method

.method public final getCurrency()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    return-object v0
.end method

.method public final getDescription()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    return-object v0
.end method

.method public final getDiscountPercent()I
    .locals 2

    .line 44
    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    if-lez v0, :cond_0

    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    if-ge v1, v0, :cond_0

    sub-int v1, v0, v1

    mul-int/lit8 v1, v1, 0x64

    .line 45
    div-int/2addr v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public final getDiscountedPrice()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    return v0
.end method

.method public final getHasDiscount()Z
    .locals 2

    .line 52
    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getHasTrial()Z
    .locals 1

    .line 56
    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getInterval()Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    return-object v0
.end method

.method public final getIntervalCount()I
    .locals 1

    .line 30
    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    return v0
.end method

.method public final getMetaData()Lcom/laborbook/keep/model/subscription/MetaData;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getPgPlanId()Ljava/lang/String;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrice()I
    .locals 1

    .line 18
    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    return v0
.end method

.method public final getTrialDays()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    invoke-virtual {v1}, Lcom/laborbook/keep/model/subscription/MetaData;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isActive()Z
    .locals 1

    .line 39
    iget-boolean v0, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SubscriptionPlan(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pgPlanId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->pgPlanId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", description="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->description:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", price="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->price:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", discountedPrice="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->discountedPrice:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currency="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->currency:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->interval:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", intervalCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->intervalCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trialDays="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->trialDays:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", metaData="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->metaData:Lcom/laborbook/keep/model/subscription/MetaData;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", isActive="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/laborbook/keep/model/subscription/SubscriptionPlan;->isActive:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
