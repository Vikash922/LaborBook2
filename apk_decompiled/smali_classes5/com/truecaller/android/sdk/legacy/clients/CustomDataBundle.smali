.class public Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;
.super Ljava/lang/Object;
.source "CustomDataBundle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final BTN_COLOR:Ljava/lang/String; = "CUSTOMDATA_BTN_COLOR"

.field private static final BTN_TEXT_COLOR:Ljava/lang/String; = "CUSTOMDATA_BTN_TEXT_COLOR"

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;",
            ">;"
        }
    .end annotation
.end field

.field private static final CTA_TEXT_PREFIX_OPTION:Ljava/lang/String; = "CUSTOMDATA_CTA_TEXT_PREFIX_OPTION"

.field private static final LOGIN_TEXT_PREFIX_OPTION:Ljava/lang/String; = "CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION"

.field private static final LOGIN_TEXT_SUFFIX_OPTION:Ljava/lang/String; = "CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION"

.field private static final PRIVACY_URL:Ljava/lang/String; = "CUSTOMDATA_PRIVACY_URL"

.field private static final TERMS_URL:Ljava/lang/String; = "CUSTOMDATA_TERMS_URL"


# instance fields
.field private final buttonColor:I

.field private final buttonTextColor:I

.field private final ctaTextPrefixOption:I

.field private final loginTextPrefixOption:I

.field private final loginTextSuffixOption:I

.field private final privacyPolicyUrl:Ljava/lang/String;

.field private final termsOfServiceUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 67
    new-instance v0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle$1;

    invoke-direct {v0}, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle$1;-><init>()V

    sput-object v0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;III)V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput p1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonColor:I

    .line 84
    iput p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonTextColor:I

    .line 85
    iput-object p3, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->privacyPolicyUrl:Ljava/lang/String;

    .line 86
    iput-object p4, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->termsOfServiceUrl:Ljava/lang/String;

    .line 87
    iput p5, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->ctaTextPrefixOption:I

    .line 88
    iput p6, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextPrefixOption:I

    .line 89
    iput p7, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextSuffixOption:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    const-string v0, "CUSTOMDATA_BTN_COLOR"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonColor:I

    .line 130
    const-string v0, "CUSTOMDATA_BTN_TEXT_COLOR"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonTextColor:I

    .line 131
    const-string v0, "CUSTOMDATA_PRIVACY_URL"

    const-string v2, ""

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->privacyPolicyUrl:Ljava/lang/String;

    .line 132
    const-string v0, "CUSTOMDATA_TERMS_URL"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->termsOfServiceUrl:Ljava/lang/String;

    .line 133
    const-string v0, "CUSTOMDATA_CTA_TEXT_PREFIX_OPTION"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->ctaTextPrefixOption:I

    .line 134
    const-string v0, "CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextPrefixOption:I

    .line 135
    const-string v0, "CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextSuffixOption:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonColor:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonTextColor:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->privacyPolicyUrl:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->termsOfServiceUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->ctaTextPrefixOption:I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextPrefixOption:I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextSuffixOption:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getButtonColor()I
    .locals 1

    .line 139
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonColor:I

    return v0
.end method

.method public getButtonTextColor()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonTextColor:I

    return v0
.end method

.method public getCtaTextPrefixOption()I
    .locals 1

    .line 155
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->ctaTextPrefixOption:I

    return v0
.end method

.method public getLoginTextPrefixOption()I
    .locals 1

    .line 159
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextPrefixOption:I

    return v0
.end method

.method public getLoginTextSuffixOption()I
    .locals 1

    .line 163
    iget v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextSuffixOption:I

    return v0
.end method

.method public getPrivacyPolicyUrl()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->privacyPolicyUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTermsOfServiceUrl()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->termsOfServiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public writeToBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    const-string v0, "CUSTOMDATA_BTN_COLOR"

    iget v1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 120
    const-string v0, "CUSTOMDATA_BTN_TEXT_COLOR"

    iget v1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonTextColor:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 121
    const-string v0, "CUSTOMDATA_PRIVACY_URL"

    iget-object v1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v0, "CUSTOMDATA_TERMS_URL"

    iget-object v1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->termsOfServiceUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    const-string v0, "CUSTOMDATA_CTA_TEXT_PREFIX_OPTION"

    iget v1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->ctaTextPrefixOption:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 124
    const-string v0, "CUSTOMDATA_LOGIN_TEXT_PREFIX_OPTION"

    iget v1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextPrefixOption:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v0, "CUSTOMDATA_LOGIN_TEXT_SUFFIX_OPTION"

    iget v1, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextSuffixOption:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 109
    iget p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->buttonTextColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->privacyPolicyUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 112
    iget-object p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->termsOfServiceUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 113
    iget p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->ctaTextPrefixOption:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextPrefixOption:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget p2, p0, Lcom/truecaller/android/sdk/legacy/clients/CustomDataBundle;->loginTextSuffixOption:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
