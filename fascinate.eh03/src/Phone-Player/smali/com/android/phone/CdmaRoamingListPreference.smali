.class public Lcom/android/phone/CdmaRoamingListPreference;
.super Landroid/preference/ListPreference;
.source "CdmaRoamingListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CdmaRoamingListPreference$1;,
        Lcom/android/phone/CdmaRoamingListPreference$MyHandler;
    }
.end annotation


# instance fields
.field private homeSystemId:I

.field private mHandler:Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CdmaRoamingListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    new-instance v0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaRoamingListPreference;Lcom/android/phone/CdmaRoamingListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference;->mHandler:Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

    .line 47
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 48
    new-instance v0, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;-><init>(Lcom/android/phone/CdmaRoamingListPreference;Lcom/android/phone/CdmaRoamingListPreference$1;)V

    iput-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference;->mHandler:Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

    .line 49
    iget-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaRoamingListPreference;->mHandler:Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/CdmaRoamingListPreference;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/phone/CdmaRoamingListPreference;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/phone/CdmaRoamingListPreference;->homeSystemId:I

    return v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 6
    .parameter "positiveResult"

    .prologue
    const-string v5, "roaming_settings"

    .line 69
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 71
    invoke-virtual {p0}, Lcom/android/phone/CdmaRoamingListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    .local v0, buttonCdmaRoamingMode:I
    iget-object v3, p0, Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    const/4 v4, 0x0

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 73
    .local v1, settingsCdmaRoamingMode:I
    if-eq v0, v1, :cond_0

    .line 75
    packed-switch v0, :pswitch_data_0

    .line 87
    const/4 v2, 0x0

    .line 90
    .local v2, statusCdmaRoamingMode:I
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "roaming_settings"

    invoke-static {v3, v5, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    iget-object v3, p0, Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v4, p0, Lcom/android/phone/CdmaRoamingListPreference;->mHandler:Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lcom/android/internal/telephony/Phone;->setCdmaRoamingPreference(ILandroid/os/Message;)V

    .line 94
    .end local v2           #statusCdmaRoamingMode:I
    :cond_0
    return-void

    .line 77
    :pswitch_0
    const/4 v2, 0x4

    .line 78
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 80
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_1
    const/4 v2, 0x3

    .line 81
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 83
    .end local v2           #statusCdmaRoamingMode:I
    :pswitch_2
    const/4 v2, 0x2

    .line 84
    .restart local v2       #statusCdmaRoamingMode:I
    goto :goto_0

    .line 75
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setDefaultSystemSelection(I)V
    .locals 3
    .parameter "homeSystemId"

    .prologue
    .line 97
    iput p1, p0, Lcom/android/phone/CdmaRoamingListPreference;->homeSystemId:I

    .line 98
    iget-object v0, p0, Lcom/android/phone/CdmaRoamingListPreference;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/CdmaRoamingListPreference;->mHandler:Lcom/android/phone/CdmaRoamingListPreference$MyHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaRoamingListPreference$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryCdmaRoamingPreference(Landroid/os/Message;)V

    .line 99
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 59
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :goto_0
    return-void

    .line 63
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method
