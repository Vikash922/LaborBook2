.class public final Lcom/mukeshsolanki/R$styleable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mukeshsolanki/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static OtpView:[I = null

.field public static OtpViewTheme:[I = null

.field public static OtpViewTheme_otpViewStyle:I = 0x0

.field public static OtpView_OtpCursorColor:I = 0x3

.field public static OtpView_OtpCursorWidth:I = 0x4

.field public static OtpView_OtpHideLineWhenFilled:I = 0x5

.field public static OtpView_OtpItemCount:I = 0x6

.field public static OtpView_OtpItemHeight:I = 0x7

.field public static OtpView_OtpItemRadius:I = 0x8

.field public static OtpView_OtpItemSpacing:I = 0x9

.field public static OtpView_OtpItemWidth:I = 0xa

.field public static OtpView_OtpLineColor:I = 0xb

.field public static OtpView_OtpLineWidth:I = 0xc

.field public static OtpView_OtpMaskingChar:I = 0xd

.field public static OtpView_OtpRtlTextDirection:I = 0xe

.field public static OtpView_OtpState_filled:I = 0xf

.field public static OtpView_OtpViewType:I = 0x10

.field public static OtpView_android_cursorVisible:I = 0x1

.field public static OtpView_android_itemBackground:I = 0x0

.field public static OtpView_android_textAllCaps:I = 0x2


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mukeshsolanki/R$styleable;->OtpView:[I

    const v0, 0x7f0403c3

    filled-new-array {v0}, [I

    move-result-object v0

    sput-object v0, Lcom/mukeshsolanki/R$styleable;->OtpViewTheme:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010130
        0x1010152
        0x101038c
        0x7f040000
        0x7f040001
        0x7f040002
        0x7f040003
        0x7f040004
        0x7f040005
        0x7f040006
        0x7f040007
        0x7f040008
        0x7f040009
        0x7f04000a
        0x7f04000b
        0x7f04000c
        0x7f04000d
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
