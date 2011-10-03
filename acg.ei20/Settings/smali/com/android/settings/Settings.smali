.class public Lcom/android/settings/Settings;
.super Landroid/preference/PreferenceActivity;
.source "Settings.java"


# static fields
.field private static final KEY_CALL_SETTINGS:Ljava/lang/String; = "call_settings"

.field private static final KEY_DOCK_SETTINGS:Ljava/lang/String; = "dock_settings"

.field private static final KEY_PARENT:Ljava/lang/String; = "parent"

.field private static final KEY_SETUPWIZARD_SETTINGS:Ljava/lang/String; = "setupwizard_settings"

.field private static final KEY_SYNC_SETTINGS:Ljava/lang/String; = "sync_settings"

.field private static final KEY_USB_SETTINGS:Ljava/lang/String; = "usb_settings"


# instance fields
.field mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPluggedType:I

.field private mUSBDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mUSBDialog:Landroid/app/Dialog;

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/Settings;->mPluggedType:I

    .line 49
    new-instance v0, Lcom/android/settings/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$1;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 118
    new-instance v0, Lcom/android/settings/Settings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/Settings$2;-><init>(Lcom/android/settings/Settings;)V

    iput-object v0, p0, Lcom/android/settings/Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Settings;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 37
    iget v0, p0, Lcom/android/settings/Settings;->mPluggedType:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/Settings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lcom/android/settings/Settings;->mPluggedType:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/Settings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/settings/Settings;->dismissDialog()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/settings/Settings;->mUSBDialog:Landroid/app/Dialog;

    if-nez v0, :cond_0

    .line 209
    :goto_0
    return-void

    .line 207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/Settings;->mUSBDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 208
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/Settings;->mUSBDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private registerUsbReceiver()V
    .locals 2

    .prologue
    .line 138
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/Settings;->mPluggedType:I

    .line 139
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 140
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 141
    iget-object v1, p0, Lcom/android/settings/Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 143
    return-void
.end method

.method private unregisterUsbReceiver()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/Settings;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    .line 68
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v3, 0x7f040022

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->addPreferencesFromResource(I)V

    .line 72
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 74
    .local v0, activePhoneType:I
    const-string v3, "parent"

    invoke-virtual {p0, v3}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceGroup;

    .line 75
    .local v2, parent:Landroid/preference/PreferenceGroup;
    const-string v3, "sync_settings"

    const/4 v4, 0x0

    invoke-static {p0, v2, v3, v4}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 77
    const-string v3, "dock_settings"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 78
    .local v1, dockSettings:Landroid/preference/Preference;
    invoke-virtual {p0}, Lcom/android/settings/Settings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060001

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 81
    :cond_0
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Lcom/android/settings/Settings;->dismissDialog()V

    .line 115
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onDestroy()V

    .line 116
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 109
    invoke-direct {p0}, Lcom/android/settings/Settings;->unregisterUsbReceiver()V

    .line 110
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 150
    const-string v1, "usb_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne v1, p2, :cond_1

    .line 182
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.UsbSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p0, v0}, Lcom/android/settings/Settings;->startActivity(Landroid/content/Intent;)V

    .line 202
    .end local v0           #i:Landroid/content/Intent;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v1

    return v1

    .line 187
    :cond_1
    const-string v1, "setupwizard_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    if-ne v1, p2, :cond_0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 93
    const-string v1, "call_settings"

    invoke-virtual {p0, v1}, Lcom/android/settings/Settings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-static {p0}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 97
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 98
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    iget-object v1, p0, Lcom/android/settings/Settings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0, v3, v3}, Lcom/android/settings/Settings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 101
    invoke-direct {p0}, Lcom/android/settings/Settings;->registerUsbReceiver()V

    .line 102
    return-void

    .line 93
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
