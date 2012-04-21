.class public Lcom/android/phone/TTYSettingsUtil;
.super Ljava/lang/Object;
.source "TTYSettingsUtil.java"


# instance fields
.field private baseContext:Landroid/content/Context;

.field private listView:Landroid/widget/ListView;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mQueryTTYComplete:Landroid/os/Handler;

.field private mQueryVoicePrivacyComplete:Landroid/os/Handler;

.field private mSetTTYComplete:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;)V
    .locals 1
    .parameter "baseContext"
    .parameter "listView"

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Lcom/android/phone/TTYSettingsUtil$1;

    invoke-direct {v0, p0}, Lcom/android/phone/TTYSettingsUtil$1;-><init>(Lcom/android/phone/TTYSettingsUtil;)V

    iput-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mQueryTTYComplete:Landroid/os/Handler;

    .line 109
    new-instance v0, Lcom/android/phone/TTYSettingsUtil$2;

    invoke-direct {v0, p0}, Lcom/android/phone/TTYSettingsUtil$2;-><init>(Lcom/android/phone/TTYSettingsUtil;)V

    iput-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mSetTTYComplete:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/android/phone/TTYSettingsUtil$3;

    invoke-direct {v0, p0}, Lcom/android/phone/TTYSettingsUtil$3;-><init>(Lcom/android/phone/TTYSettingsUtil;)V

    iput-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    .line 34
    iput-object p1, p0, Lcom/android/phone/TTYSettingsUtil;->baseContext:Landroid/content/Context;

    .line 35
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 36
    iput-object p2, p0, Lcom/android/phone/TTYSettingsUtil;->listView:Landroid/widget/ListView;

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/TTYSettingsUtil;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/TTYSettingsUtil;->handleQueryTTYModeMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/TTYSettingsUtil;Landroid/os/Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/TTYSettingsUtil;->handleQueryTtyResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/TTYSettingsUtil;Landroid/os/AsyncResult;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/android/phone/TTYSettingsUtil;->handleQueryVPModeMessage(Landroid/os/AsyncResult;)I

    move-result v0

    return v0
.end method

.method public static getTTYString(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    .line 254
    const-string v0, "TTY OFF"

    .line 255
    .local v0, result:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 269
    const-string v0, "TTY OFF"

    .line 271
    :goto_0
    return-object v0

    .line 257
    :pswitch_0
    const-string v0, "TTY OFF"

    .line 258
    goto :goto_0

    .line 260
    :pswitch_1
    const-string v0, "TTY HCO"

    .line 261
    goto :goto_0

    .line 263
    :pswitch_2
    const-string v0, "TTY VCO"

    .line 264
    goto :goto_0

    .line 266
    :pswitch_3
    const-string v0, "TTY Full"

    .line 267
    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private handleQueryTTYModeMessage(Landroid/os/AsyncResult;)I
    .locals 3
    .parameter "ar"

    .prologue
    .line 212
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 213
    const/16 v0, 0xc8

    .line 219
    :goto_0
    return v0

    .line 215
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/android/phone/TTYSettingsUtil;->syncTTYState([I)V

    .line 216
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "tty_mode_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 219
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private handleQueryTtyResponse(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v5, 0x0

    .line 128
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 130
    .local v0, ar:Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    .line 131
    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    check-cast v3, [I

    aget v2, v3, v5

    .line 132
    .local v2, ttyMode:I
    iget-object v3, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_tty_mode"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 138
    .local v1, settingsTtyMode:I
    if-eqz v2, :cond_0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 143
    :cond_0
    if-eq v2, v1, :cond_1

    .line 144
    move v1, v2

    .line 146
    iget-object v3, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "preferred_network_mode"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 151
    :cond_1
    sget-object v3, Lcom/android/phone/CallFeaturesSetting;->mTTYPref:Landroid/preference/Preference;

    invoke-static {v2}, Lcom/android/phone/TTYSettingsUtil;->getTTYString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 156
    .end local v1           #settingsTtyMode:I
    .end local v2           #ttyMode:I
    :cond_2
    :goto_0
    return-void

    .line 153
    .restart local v1       #settingsTtyMode:I
    .restart local v2       #ttyMode:I
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/TTYSettingsUtil;->resetTtyModeToDefault()V

    goto :goto_0
.end method

.method private handleQueryVPModeMessage(Landroid/os/AsyncResult;)I
    .locals 3
    .parameter "ar"

    .prologue
    .line 198
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    .line 199
    const-string v0, "TTYSettingsUtil"

    const-string v1, "ar.exception - not null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/16 v0, 0xc8

    .line 207
    :goto_0
    return v0

    .line 202
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    invoke-direct {p0, v0}, Lcom/android/phone/TTYSettingsUtil;->syncVPState([I)V

    .line 203
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhanced_voice_privacy_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 207
    const/16 v0, 0x64

    goto :goto_0
.end method

.method private handleSetVPMessage()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/TTYSettingsUtil;->mQueryVoicePrivacyComplete:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getEnhancedVoicePrivacy(Landroid/os/Message;)V

    .line 172
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enhanced_voice_privacy_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 174
    return-void
.end method

.method private resetTtyModeToDefault()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 160
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/TTYSettingsUtil;->mSetTTYComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 166
    return-void
.end method

.method static setStatusBarIcon(Landroid/content/Context;Z)V
    .locals 2
    .parameter "context"
    .parameter "enabled"

    .prologue
    .line 248
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, ttyModeChanged:Landroid/content/Intent;
    const-string v1, "ttyEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    return-void
.end method

.method private syncTTYState([I)V
    .locals 3
    .parameter "ttyArray"

    .prologue
    const/4 v2, 0x0

    .line 231
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->baseContext:Landroid/content/Context;

    .line 233
    .local v0, context:Landroid/content/Context;
    aget v1, p1, v2

    if-nez v1, :cond_0

    .line 235
    invoke-static {v0, v2}, Lcom/android/phone/TTYSettingsUtil;->setStatusBarIcon(Landroid/content/Context;Z)V

    .line 241
    :goto_0
    return-void

    .line 239
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/TTYSettingsUtil;->setStatusBarIcon(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method private syncVPState([I)V
    .locals 0
    .parameter "vpArray"

    .prologue
    .line 226
    return-void
.end method


# virtual methods
.method public handleTTYClickRequest(I)V
    .locals 7
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    const/16 v5, 0x320

    const-string v6, "preferred_tty_mode"

    .line 53
    move v0, p1

    .line 54
    .local v0, buttonTtyMode:I
    iget-object v2, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, settingsTtyMode:I
    if-eq v0, v1, :cond_0

    .line 59
    packed-switch v0, :pswitch_data_0

    .line 77
    iget-object v2, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/TTYSettingsUtil;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    .line 80
    :goto_0
    iget-object v2, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_tty_mode"

    invoke-static {v2, v6, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 84
    :cond_0
    return-void

    .line 61
    :pswitch_0
    iget-object v2, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v3, p0, Lcom/android/phone/TTYSettingsUtil;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v3, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v4, v3}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 65
    :pswitch_1
    iget-object v2, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/TTYSettingsUtil;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 69
    :pswitch_2
    iget-object v2, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/phone/TTYSettingsUtil;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 73
    :pswitch_3
    iget-object v2, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/phone/TTYSettingsUtil;->mSetTTYComplete:Landroid/os/Handler;

    invoke-static {v4, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto :goto_0

    .line 59
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 42
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-direct {p0}, Lcom/android/phone/TTYSettingsUtil;->handleSetVPMessage()V

    .line 44
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/TTYSettingsUtil;->mQueryTTYComplete:Landroid/os/Handler;

    const/16 v2, 0x2bc

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 50
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/phone/TTYSettingsUtil;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelected(Z)V

    goto :goto_0
.end method
