.class public final enum Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
.super Ljava/lang/Enum;
.source "MPDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mixpanel/android/mpmetrics/MPDbAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Table"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum GROUPS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

.field public static final enum PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;


# instance fields
.field private final mTableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 34
    new-instance v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const/4 v1, 0x0

    const-string v2, "events"

    const-string v3, "EVENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->EVENTS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .line 35
    new-instance v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const/4 v2, 0x1

    const-string v3, "people"

    const-string v4, "PEOPLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .line 36
    new-instance v2, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const/4 v3, 0x2

    const-string v4, "anonymous_people"

    const-string v5, "ANONYMOUS_PEOPLE"

    invoke-direct {v2, v5, v3, v4}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->ANONYMOUS_PEOPLE:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .line 37
    new-instance v3, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    const/4 v4, 0x3

    const-string v5, "groups"

    const-string v6, "GROUPS"

    invoke-direct {v3, v6, v4, v5}, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->GROUPS:Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    .line 33
    filled-new-array {v0, v1, v2, v3}, [Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    move-result-object v0

    sput-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->$VALUES:[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 40
    iput-object p3, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->mTableName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
    .locals 1

    .line 33
    const-class v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    return-object p0
.end method

.method public static values()[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;
    .locals 1

    .line 33
    sget-object v0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->$VALUES:[Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    invoke-virtual {v0}, [Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/mixpanel/android/mpmetrics/MPDbAdapter$Table;->mTableName:Ljava/lang/String;

    return-object v0
.end method
