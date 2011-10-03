.class public Lcom/android/settings/SecuritySettings;
.super Landroid/preference/PreferenceActivity;
.source "SecuritySettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SecuritySettings$CredentialStorage;,
        Lcom/android/settings/SecuritySettings$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ANDROID_STACK:I = 0x0

.field private static final ASSISTED_GPS:Ljava/lang/String; = "assisted_gps"

.field private static final CHOOSE_AGREE:I = 0x1

.field private static final CHOOSE_CANCEL:I = 0x2

.field private static final GPS_MASK:B = 0x3t

.field private static final ICC_LOCK_SETTINGS:Ljava/lang/String; = "com.android.settings.IccLockSettings"

.field private static final KEY_LOCK_ENABLED:Ljava/lang/String; = "lockenabled"

.field private static final KEY_TACTILE_FEEDBACK_ENABLED:Ljava/lang/String; = "unlock_tactile_feedback"

.field private static final KEY_UNLOCK_SET_OR_CHANGE:Ljava/lang/String; = "unlock_set_or_change"

.field private static final KEY_VISIBLE_PATTERN:Ljava/lang/String; = "visiblepattern"

.field private static final LOCATION_3RDPARTY_GPS:Ljava/lang/String; = "location_3rdparty_gps"

.field private static final LOCATION_3RDPARTY_GPS_DIALOG:I = 0x6

.field private static final LOCATION_3RDPARTY_NETWORK:Ljava/lang/String; = "location_3rdparty_network"

.field private static final LOCATION_3RDPARTY_NETWORK_DIALOG:I = 0x7

.field private static final LOCATION_CATEGORY:Ljava/lang/String; = "location_category"

.field private static final LOCATION_E911:Ljava/lang/String; = "location_e911"

.field private static final LOCATION_GPS:Ljava/lang/String; = "location_gps"

.field private static final LOCATION_INIT:Ljava/lang/String; = "location_init"

.field private static final LOCATION_NETWORK:Ljava/lang/String; = "location_network"

.field private static final LOCATION_OFF:Ljava/lang/String; = "location_off"

.field private static final LOCATION_ON:Ljava/lang/String; = "location_on"

.field private static final LOCATION_VZW:Ljava/lang/String; = "location_vzw"

.field private static final LOCATION_VZW_DIALOG:I = 0x5

.field private static final PACKAGE:Ljava/lang/String; = "com.android.settings"

.field private static final SET_OR_CHANGE_LOCK_METHOD_REQUEST:I = 0x7b

.field private static final VERIZON_STACK:I = 0x1


# instance fields
.field bLocationWizardModeEnabled:Z

.field private gpsFlag:B

.field private m3rdParty_lbs:Landroid/preference/CheckBoxPreference;

.field private m3rdParty_network:Landroid/preference/CheckBoxPreference;

.field private mAssistedGps:Landroid/preference/CheckBoxPreference;

.field private mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

.field private mContentQueryMap:Landroid/content/ContentQueryMap;

.field private mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

.field mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mGps:Landroid/preference/CheckBoxPreference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsPwdDlgOn:Z

.field mIsSetupWizardRunning:Z

.field private mKeyState:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNetwork:Landroid/preference/CheckBoxPreference;

.field private mNewPwd:Landroid/widget/EditText;

.field private mOldPwd:Landroid/widget/EditText;

.field private mShowPassword:Landroid/preference/CheckBoxPreference;

.field mSimLockPreferences:Landroid/preference/PreferenceScreen;

.field mSimState:I

.field private mTactileFeedback:Landroid/preference/CheckBoxPreference;

.field private mVisiblePattern:Landroid/preference/CheckBoxPreference;

.field private mVzw_lbs:Landroid/preference/CheckBoxPreference;

.field private userChoice:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 83
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 94
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mIsSetupWizardRunning:Z

    .line 95
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->bLocationWizardModeEnabled:Z

    .line 115
    new-instance v0, Lcom/android/settings/SecuritySettings$CredentialStorage;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SecuritySettings$CredentialStorage;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    .line 126
    iput-boolean v2, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    .line 144
    iput-byte v2, p0, Lcom/android/settings/SecuritySettings;->gpsFlag:B

    .line 154
    iput v2, p0, Lcom/android/settings/SecuritySettings;->userChoice:I

    .line 690
    new-instance v0, Lcom/android/settings/SecuritySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$2;-><init>(Lcom/android/settings/SecuritySettings;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 701
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/settings/SecuritySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->mNewPwd:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/android/settings/SecuritySettings;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->mOldPwd:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mVzw_lbs:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/SecuritySettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/android/settings/SecuritySettings;->updateSIMLockEnable(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_lbs:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/SecuritySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/settings/SecuritySettings;->userChoice:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_network:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/settings/SecuritySettings;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput-boolean p1, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/settings/SecuritySettings;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 83
    iput p1, p0, Lcom/android/settings/SecuritySettings;->mKeyState:I

    return p1
.end method

.method private createPreferenceHierarchy()Landroid/preference/PreferenceScreen;
    .locals 15

    .prologue
    .line 287
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 288
    .local v8, root:Landroid/preference/PreferenceScreen;
    if-eqz v8, :cond_0

    .line 289
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 291
    :cond_0
    const v11, 0x7f04001b

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 292
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v8

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "location_3rdparty_gps"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_lbs:Landroid/preference/CheckBoxPreference;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "location_vzw"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mVzw_lbs:Landroid/preference/CheckBoxPreference;

    .line 302
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v11

    const-string v12, "location_3rdparty_network"

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_network:Landroid/preference/CheckBoxPreference;

    .line 303
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    .line 315
    .local v7, pm:Landroid/preference/PreferenceManager;
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->isSecure()Z

    move-result v11

    if-nez v11, :cond_3

    .line 316
    const v11, 0x7f04001c

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    .line 336
    :goto_0
    const-string v11, "visiblepattern"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    .line 339
    const-string v11, "unlock_tactile_feedback"

    invoke-virtual {v7, v11}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    .line 341
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v1

    .line 344
    .local v1, activePhoneType:I
    const/4 v11, 0x2

    if-eq v11, v1, :cond_2

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v11

    invoke-virtual {v11, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v11

    iput-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    .line 359
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    const v12, 0x7f09027a

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setTitle(I)V

    .line 360
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    new-instance v12, Landroid/content/Intent;

    invoke-direct {v12}, Landroid/content/Intent;-><init>()V

    const-string v13, "com.android.settings"

    const-string v14, "com.android.settings.IccLockSettings"

    invoke-virtual {v12, v13, v14}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 361
    new-instance v10, Landroid/preference/PreferenceCategory;

    invoke-direct {v10, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 362
    .local v10, simLockCat:Landroid/preference/PreferenceCategory;
    const v11, 0x7f09027b

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 363
    invoke-virtual {v8, v10}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 364
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 365
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v11

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    .line 366
    .local v0, SimState:I
    if-eqz v0, :cond_1

    const/4 v11, 0x1

    if-ne v0, v11, :cond_4

    .line 367
    :cond_1
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 375
    .end local v0           #SimState:I
    .end local v10           #simLockCat:Landroid/preference/PreferenceCategory;
    :cond_2
    :goto_1
    new-instance v6, Landroid/preference/PreferenceCategory;

    invoke-direct {v6, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 376
    .local v6, passwordsCat:Landroid/preference/PreferenceCategory;
    const v11, 0x7f09011d

    invoke-virtual {v6, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 377
    invoke-virtual {v8, v6}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 379
    new-instance v9, Landroid/preference/CheckBoxPreference;

    invoke-direct {v9, p0}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    .line 380
    .local v9, showPassword:Landroid/preference/CheckBoxPreference;
    const-string v11, "show_password"

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 381
    const v11, 0x7f0903f1

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setTitle(I)V

    .line 382
    const v11, 0x7f0903f2

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 383
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 384
    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    new-instance v5, Landroid/preference/PreferenceCategory;

    invoke-direct {v5, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 388
    .local v5, devicePoliciesCat:Landroid/preference/PreferenceCategory;
    const v11, 0x7f090145

    invoke-virtual {v5, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 389
    invoke-virtual {v8, v5}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 391
    new-instance v3, Landroid/preference/Preference;

    invoke-direct {v3, p0}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 392
    .local v3, deviceAdminButton:Landroid/preference/Preference;
    const v11, 0x7f090146

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setTitle(I)V

    .line 393
    const v11, 0x7f090147

    invoke-virtual {v3, v11}, Landroid/preference/Preference;->setSummary(I)V

    .line 394
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 395
    .local v4, deviceAdminIntent:Landroid/content/Intent;
    const-class v11, Lcom/android/settings/DeviceAdminSettings;

    invoke-virtual {v4, p0, v11}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 396
    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 397
    invoke-virtual {v5, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 400
    new-instance v2, Landroid/preference/PreferenceCategory;

    invoke-direct {v2, p0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 401
    .local v2, credentialsCat:Landroid/preference/PreferenceCategory;
    const v11, 0x7f0904f7

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceCategory;->setTitle(I)V

    .line 402
    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 403
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    const/4 v12, 0x0

    invoke-static {v11, v2, v12}, Lcom/android/settings/SecuritySettings$CredentialStorage;->access$300(Lcom/android/settings/SecuritySettings$CredentialStorage;Landroid/preference/PreferenceCategory;I)V

    .line 405
    return-object v8

    .line 318
    .end local v1           #activePhoneType:I
    .end local v2           #credentialsCat:Landroid/preference/PreferenceCategory;
    .end local v3           #deviceAdminButton:Landroid/preference/Preference;
    .end local v4           #deviceAdminIntent:Landroid/content/Intent;
    .end local v5           #devicePoliciesCat:Landroid/preference/PreferenceCategory;
    .end local v6           #passwordsCat:Landroid/preference/PreferenceCategory;
    .end local v9           #showPassword:Landroid/preference/CheckBoxPreference;
    :cond_3
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v11}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    goto/16 :goto_0

    .line 320
    :sswitch_0
    const v11, 0x7f04001e

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 323
    :sswitch_1
    const v11, 0x7f040020

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 327
    :sswitch_2
    const v11, 0x7f04001d

    invoke-virtual {p0, v11}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0

    .line 369
    .restart local v0       #SimState:I
    .restart local v1       #activePhoneType:I
    .restart local v10       #simLockCat:Landroid/preference/PreferenceCategory;
    :cond_4
    iget-object v11, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/settings/AirplaneModeEnabler;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_5

    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v11, v12}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 318
    nop

    :sswitch_data_0
    .sparse-switch
        0x10000 -> :sswitch_0
        0x20000 -> :sswitch_1
        0x40000 -> :sswitch_2
        0x50000 -> :sswitch_2
    .end sparse-switch
.end method

.method private isToggled(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "pref"

    .prologue
    .line 657
    check-cast p1, Landroid/preference/CheckBoxPreference;

    .end local p1
    invoke-virtual {p1}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method private sendLBSStatus(Z)V
    .locals 2
    .parameter "checked"

    .prologue
    .line 664
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.location.intent.action.LBS_ENABLED_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 665
    .local v0, lbsChanged:Landroid/content/Intent;
    const-string v1, "lbsEnabled"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 666
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->sendBroadcast(Landroid/content/Intent;)V

    .line 668
    return-void
.end method

.method private updateSIMLockEnable(Z)V
    .locals 2
    .parameter "simLock"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    if-nez v0, :cond_0

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    .line 683
    :cond_0
    iget v0, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 684
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 688
    :goto_0
    return-void

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mSimLockPreferences:Landroid/preference/PreferenceScreen;

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateToggles()V
    .locals 5

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 625
    .local v2, res:Landroid/content/ContentResolver;
    const-string v4, "gps"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    .line 627
    .local v0, gpsEnabled:Z
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_lbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v0}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 637
    const-string v4, "network"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v1

    .line 638
    .local v1, networkEnabled:Z
    iget-object v4, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_network:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 640
    const-string v4, "vzw_lbs"

    invoke-static {v2, v4}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v3

    .line 647
    .local v3, vzwEnabled:Z
    or-int v4, v0, v1

    or-int/2addr v4, v3

    invoke-direct {p0, v4}, Lcom/android/settings/SecuritySettings;->sendLBSStatus(Z)V

    .line 654
    return-void
.end method


# virtual methods
.method isSetupWizardRunning()Z
    .locals 8

    .prologue
    const-string v7, "4DMECH"

    .line 266
    const/4 v3, 0x0

    .line 268
    .local v3, isWizardRunning:Z
    const-string v5, "4DMECH"

    const-string v5, "isSetupWizardRunning() ? "

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 270
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 271
    .local v4, procList:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v2, 0x0

    .line 273
    .local v2, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    .line 274
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 275
    .restart local v2       #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v5, "4DMECH"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "running process("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", importance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v6, "com.sec.android.app.setupwizard"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x1f4

    if-eq v5, v6, :cond_0

    .line 278
    const/4 v3, 0x1

    .line 279
    const-string v5, "\t4DMECH"

    const-string v6, "BINGO!"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    :cond_1
    return v3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 675
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 676
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 677
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 261
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onBackPressed()V

    .line 263
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13
    .parameter "savedInstanceState"

    .prologue
    .line 174
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 176
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "LocationWizardModeEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->bLocationWizardModeEnabled:Z

    .line 178
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 180
    const-string v0, "Setup Wizard Test"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Security Wizard Mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->bLocationWizardModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    new-instance v0, Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->isSetupWizardRunning()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/SecuritySettings;->mIsSetupWizardRunning:Z

    .line 184
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->bLocationWizardModeEnabled:Z

    if-nez v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->createPreferenceHierarchy()Landroid/preference/PreferenceScreen;

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "location_3rdparty_gps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_lbs:Landroid/preference/CheckBoxPreference;

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "location_3rdparty_network"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_network:Landroid/preference/CheckBoxPreference;

    .line 206
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "(name=?)"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "location_providers_allowed"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 213
    .local v12, settingsCursor:Landroid/database/Cursor;
    new-instance v0, Landroid/content/ContentQueryMap;

    const-string v1, "name"

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v12, v1, v2, v3}, Landroid/content/ContentQueryMap;-><init>(Landroid/database/Cursor;Ljava/lang/String;ZLandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    .line 214
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mContentQueryMap:Landroid/content/ContentQueryMap;

    new-instance v1, Lcom/android/settings/SecuritySettings$SettingsObserver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/SecuritySettings$SettingsObserver;-><init>(Lcom/android/settings/SecuritySettings;Lcom/android/settings/SecuritySettings$1;)V

    invoke-virtual {v0, v1}, Landroid/content/ContentQueryMap;->addObserver(Ljava/util/Observer;)V

    .line 216
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/SecuritySettings;->mSimState:I

    .line 218
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->bLocationWizardModeEnabled:Z

    if-eqz v0, :cond_0

    .line 219
    const-string v0, "4DMECH"

    const-string v1, "SecuritySettings - SetupWizard UI mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const v0, 0x7f09011e

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->setTitle(I)V

    .line 222
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    .line 223
    .local v7, content:Landroid/widget/FrameLayout;
    const v0, 0x102000a

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    .line 224
    .local v9, listV:Landroid/widget/ListView;
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    .line 226
    .local v11, parent:Landroid/view/ViewParent;
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/LayoutInflater;

    .line 229
    .local v8, inflater:Landroid/view/LayoutInflater;
    const v0, 0x7f030076

    check-cast v11, Landroid/view/ViewGroup;

    .end local v11           #parent:Landroid/view/ViewParent;
    const/4 v1, 0x1

    invoke-virtual {v8, v0, v11, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 234
    .local v6, buttonPannel:Landroid/view/View;
    const v0, 0x7f0b0160

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/Button;

    .line 235
    .local v10, next:Landroid/widget/Button;
    new-instance v0, Lcom/android/settings/SecuritySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SecuritySettings$1;-><init>(Lcom/android/settings/SecuritySettings;)V

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .end local v6           #buttonPannel:Landroid/view/View;
    .end local v7           #content:Landroid/widget/FrameLayout;
    .end local v8           #inflater:Landroid/view/LayoutInflater;
    .end local v9           #listV:Landroid/widget/ListView;
    .end local v10           #next:Landroid/widget/Button;
    :cond_0
    return-void

    .line 188
    .end local v12           #settingsCursor:Landroid/database/Cursor;
    :cond_1
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->addPreferencesFromResource(I)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 1
    .parameter "id"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v0, p1}, Lcom/android/settings/SecuritySettings$CredentialStorage;->createDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 437
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 439
    iget-boolean v0, p0, Lcom/android/settings/SecuritySettings;->bLocationWizardModeEnabled:Z

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 442
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v9, 0x0

    .line 490
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 491
    .local v4, key:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v6}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v5

    .line 493
    .local v5, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    const-string v6, "unlock_set_or_change"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 494
    new-instance v3, Landroid/content/Intent;

    const-class v6, Lcom/android/settings/ChooseLockGeneric;

    invoke-direct {v3, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 495
    .local v3, intent:Landroid/content/Intent;
    const/16 v6, 0x7b

    invoke-virtual {p0, v3, v6}, Lcom/android/settings/SecuritySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 598
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return v9

    .line 496
    :cond_1
    const-string v6, "lockenabled"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 497
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setLockPatternEnabled(Z)V

    goto :goto_0

    .line 498
    :cond_2
    const-string v6, "visiblepattern"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 499
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(Z)V

    goto :goto_0

    .line 502
    :cond_3
    const-string v6, "unlock_tactile_feedback"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 503
    invoke-direct {p0, p2}, Lcom/android/settings/SecuritySettings;->isToggled(Landroid/preference/Preference;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->setTactileFeedbackEnabled(Z)V

    goto :goto_0

    .line 507
    :cond_4
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_6

    .line 508
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "show_password"

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v8, 0x1

    :goto_1
    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_5
    move v8, v9

    goto :goto_1

    .line 529
    :cond_6
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_lbs:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_8

    .line 546
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_lbs:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v6}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v1

    .line 547
    .local v1, enabled:Z
    if-eqz v1, :cond_7

    .line 548
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 549
    .local v0, authIntent:Landroid/content/Intent;
    const-class v6, Lcom/android/settings/LocationAlert;

    invoke-virtual {v0, p0, v6}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 550
    invoke-virtual {p0, v0}, Lcom/android/settings/SecuritySettings;->startActivity(Landroid/content/Intent;)V

    .line 551
    invoke-direct {p0}, Lcom/android/settings/SecuritySettings;->updateToggles()V

    goto :goto_0

    .line 553
    .end local v0           #authIntent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "gps"

    invoke-static {v6, v7, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 555
    new-instance v2, Landroid/content/Intent;

    const-string v6, "android.settings.GPS_CHANGED"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 556
    .local v2, i:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/android/settings/SecuritySettings;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 562
    .end local v1           #enabled:Z
    .end local v2           #i:Landroid/content/Intent;
    :cond_8
    iget-object v6, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_network:Landroid/preference/CheckBoxPreference;

    if-ne p2, v6, :cond_0

    .line 578
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "network"

    iget-object v8, p0, Lcom/android/settings/SecuritySettings;->m3rdParty_network:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v8}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    goto/16 :goto_0
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 410
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 412
    iget-boolean v2, p0, Lcom/android/settings/SecuritySettings;->bLocationWizardModeEnabled:Z

    if-nez v2, :cond_2

    .line 413
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mChooseLockSettingsHelper:Lcom/android/settings/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    .line 414
    .local v1, lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_0

    .line 415
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mVisiblePattern:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 418
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    if-eqz v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mTactileFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 423
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 424
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 425
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0, v4, v4}, Lcom/android/settings/SecuritySettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 428
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mShowPassword:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "show_password"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    move v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 431
    iget-object v2, p0, Lcom/android/settings/SecuritySettings;->mCredentialStorage:Lcom/android/settings/SecuritySettings$CredentialStorage;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings$CredentialStorage;->resume()V

    .line 433
    .end local v0           #filter:Landroid/content/IntentFilter;
    .end local v1           #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_2
    return-void

    .line 428
    .restart local v0       #filter:Landroid/content/IntentFilter;
    .restart local v1       #lockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .parameter "hasWindowFocus"

    .prologue
    const/4 v3, 0x0

    .line 1177
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onWindowFocusChanged(Z)V

    .line 1179
    invoke-virtual {p0}, Lcom/android/settings/SecuritySettings;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 1181
    .local v0, inputManager:Landroid/view/inputmethod/InputMethodManager;
    iget-boolean v1, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    if-eqz v1, :cond_0

    .line 1183
    iget v1, p0, Lcom/android/settings/SecuritySettings;->mKeyState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1184
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mNewPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1189
    :goto_0
    iput-boolean v3, p0, Lcom/android/settings/SecuritySettings;->mIsPwdDlgOn:Z

    .line 1191
    :cond_0
    return-void

    .line 1186
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SecuritySettings;->mOldPwd:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
