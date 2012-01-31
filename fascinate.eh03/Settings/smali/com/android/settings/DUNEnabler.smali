.class public Lcom/android/settings/DUNEnabler;
.super Ljava/lang/Object;
.source "DUNEnabler.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private enabled:Z

.field private final mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonDataDun:Landroid/preference/CheckBoxPreference;

.field private final mContext:Landroid/content/Context;

.field private mDataDunClicked:Z

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mOkClicked:Z

.field private settings:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/CheckBoxPreference;)V
    .locals 4
    .parameter "context"
    .parameter "dunCheckBoxPreference"

    .prologue
    const/4 v3, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v3, p0, Lcom/android/settings/DUNEnabler;->enabled:Z

    .line 41
    new-instance v1, Lcom/android/settings/DUNEnabler$1;

    invoke-direct {v1, p0}, Lcom/android/settings/DUNEnabler$1;-><init>(Lcom/android/settings/DUNEnabler;)V

    iput-object v1, p0, Lcom/android/settings/DUNEnabler;->mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

    .line 64
    iput-object p1, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    .line 65
    iput-object p2, p0, Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    .line 66
    invoke-virtual {p2, v3}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 67
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/settings/DUNEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 69
    iget-object v1, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    const-string v2, "SettingsDUNEnabler"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/DUNEnabler;->settings:Landroid/content/SharedPreferences;

    .line 70
    iget-object v1, p0, Lcom/android/settings/DUNEnabler;->settings:Landroid/content/SharedPreferences;

    const-string v2, "SHOWING_DIALOG"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 71
    .local v0, showing:Z
    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/DUNEnabler;->showDialog()V

    .line 74
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DUNEnabler;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/android/settings/DUNEnabler;->enabled:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/DUNEnabler;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/DUNEnabler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/android/settings/DUNEnabler;->sendBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private getDataOnDunEnabled()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 115
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dun_enable"

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

.method private sendBroadcast(Ljava/lang/String;)V
    .locals 3
    .parameter "action"

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 148
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.CHANGE_DUN_STATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method private showDialog()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DUNEnabler;->mOkClicked:Z

    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/DUNEnabler;->mDataDunClicked:Z

    .line 79
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040014

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040013

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1040009

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 87
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/DUNEnabler;->mDataDunClicked:Z

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    .line 124
    const-string v0, "com.android.phone.EnableDUN"

    invoke-direct {p0, v0}, Lcom/android/settings/DUNEnabler;->sendBroadcast(Ljava/lang/String;)V

    .line 125
    iput-boolean v1, p0, Lcom/android/settings/DUNEnabler;->mOkClicked:Z

    .line 126
    iput-boolean v1, p0, Lcom/android/settings/DUNEnabler;->enabled:Z

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOWING_DIALOG"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 132
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/android/settings/DUNEnabler;->enabled:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    iput-boolean v2, p0, Lcom/android/settings/DUNEnabler;->mDataDunClicked:Z

    .line 135
    :cond_0
    return-void

    .line 129
    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/DUNEnabler;->enabled:Z

    goto :goto_0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "arg0"

    .prologue
    const/4 v2, 0x0

    .line 138
    iget-boolean v0, p0, Lcom/android/settings/DUNEnabler;->mDataDunClicked:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/DUNEnabler;->mOkClicked:Z

    if-nez v0, :cond_0

    .line 139
    iput-boolean v2, p0, Lcom/android/settings/DUNEnabler;->enabled:Z

    .line 140
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    iput-boolean v2, p0, Lcom/android/settings/DUNEnabler;->mDataDunClicked:Z

    .line 142
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOWING_DIALOG"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 144
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .parameter "preference"
    .parameter "value"

    .prologue
    const/4 v2, 0x1

    .line 101
    check-cast p2, Ljava/lang/Boolean;

    .end local p2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/DUNEnabler;->showDialog()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->settings:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "SHOWING_DIALOG"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 111
    :goto_0
    return v2

    .line 108
    :cond_0
    const-string v0, "com.android.phone.DisableDUN"

    invoke-direct {p0, v0}, Lcom/android/settings/DUNEnabler;->sendBroadcast(Ljava/lang/String;)V

    .line 109
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/DUNEnabler;->enabled:Z

    goto :goto_0
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DUNEnabler;->mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 97
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 90
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    invoke-direct {p0}, Lcom/android/settings/DUNEnabler;->getDataOnDunEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 91
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/DUNEnabler;->mAirplaneSateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/DUNEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 92
    iget-object v0, p0, Lcom/android/settings/DUNEnabler;->mButtonDataDun:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 93
    return-void
.end method
