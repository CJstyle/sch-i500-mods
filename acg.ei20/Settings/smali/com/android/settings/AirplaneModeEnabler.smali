.class public Lcom/android/settings/AirplaneModeEnabler;
.super Ljava/lang/Object;
.source "AirplaneModeEnabler.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "AirplaneModeEnabler"


# instance fields
.field private final mCheckBoxPref:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 3
    .parameter "context"
    .parameter "airplaneModeCheckBoxPreference"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/AirplaneModeEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/AirplaneModeEnabler$1;-><init>(Lcom/android/settings/AirplaneModeEnabler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 68
    iput-object p1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 74
    new-instance v0, Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    .line 75
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->notifyServiceState(I)V

    .line 76
    invoke-direct {p0}, Lcom/android/settings/AirplaneModeEnabler;->registerListener()V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/AirplaneModeEnabler;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/AirplaneModeEnabler;Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private onAirplaneModeChanged(Landroid/telephony/ServiceState;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v5, 0x1

    .line 121
    move-object v1, p1

    .line 122
    .local v1, serviceState:Landroid/telephony/ServiceState;
    if-nez p1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    .line 124
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    move v0, v5

    .line 125
    .local v0, airplaneModeEnabled:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 128
    return-void

    .line 124
    .end local v0           #airplaneModeEnabled:Z
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0

    .line 126
    .restart local v0       #airplaneModeEnabled:Z
    :cond_2
    iget-object v3, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const v4, 0x7f0900fe

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private registerListener()V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 49
    return-void
.end method

.method private setAirplaneModeOn(Z)V
    .locals 4
    .parameter "enabling"

    .prologue
    const/4 v3, 0x0

    .line 102
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 103
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    if-eqz p1, :cond_1

    const v2, 0x7f0900ff

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    if-eqz p1, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 113
    iget-object v1, p0, Lcom/android/settings/AirplaneModeEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 114
    return-void

    .line 103
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    const v2, 0x7f090100

    goto :goto_0
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "preference"
    .parameter "newValue"

    .prologue
    .line 134
    const-string v0, "ril.cdma.inecmmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    .end local p2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 138
    .restart local p2
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->unregisterIntent()V

    .line 92
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mPhoneStateReceiver:Lcom/android/internal/telephony/PhoneStateIntentReceiver;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneStateIntentReceiver;->registerIntent()V

    .line 87
    iget-object v0, p0, Lcom/android/settings/AirplaneModeEnabler;->mCheckBoxPref:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 88
    return-void
.end method

.method public setAirplaneModeInECM(ZZ)V
    .locals 1
    .parameter "isECMExit"
    .parameter "isAirplaneModeOn"

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 146
    invoke-direct {p0, p2}, Lcom/android/settings/AirplaneModeEnabler;->setAirplaneModeOn(Z)V

    .line 153
    :goto_0
    return-void

    .line 150
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/AirplaneModeEnabler;->onAirplaneModeChanged(Landroid/telephony/ServiceState;)V

    goto :goto_0
.end method
