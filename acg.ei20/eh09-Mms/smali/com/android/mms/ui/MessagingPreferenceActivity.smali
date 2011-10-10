.class public Lcom/android/mms/ui/MessagingPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "MessagingPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field private static final SMSC_URI:Landroid/net/Uri;


# instance fields
.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mMmsRecycler:Lcom/android/mms/util/Recycler;

.field private mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

.field private mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

.field mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

.field private mSmsRecycler:Lcom/android/mms/util/Recycler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 66
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 414
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 421
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 452
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 297
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 298
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 299
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 300
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 301
    const v1, 0x7f090147

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 302
    const v1, 0x7f090148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 303
    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 305
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 306
    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 530
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 531
    const/4 v0, 0x0

    .line 535
    :goto_0
    return v0

    .line 532
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 533
    const/4 v0, 0x1

    goto :goto_0

    .line 534
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    const/4 v0, 0x2

    goto :goto_0

    .line 537
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown MMS creation mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getInputmode(Landroid/content/Context;)I
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x2

    const-string v5, "Automatic"

    .line 509
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 510
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_input_mode"

    const-string v3, "Automatic"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 511
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "GSM alphabet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 512
    const/4 v2, 0x0

    .line 518
    :goto_0
    return v2

    .line 513
    :cond_0
    const-string v2, "Unicode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 514
    const/4 v2, 0x1

    goto :goto_0

    .line 515
    :cond_1
    const-string v2, "Automatic"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 516
    goto :goto_0

    :cond_2
    move v2, v4

    .line 518
    goto :goto_0
.end method

.method private restoreDefaultPreferences()V
    .locals 14

    .prologue
    .line 340
    new-instance v1, Lcom/android/mms/util/MessagingCscSetting;

    invoke-direct {v1, p0}, Lcom/android/mms/util/MessagingCscSetting;-><init>(Landroid/content/Context;)V

    .line 341
    .local v1, cscSetting:Lcom/android/mms/util/MessagingCscSetting;
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCurrentSettings()Z

    .line 342
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCscSettings()Z

    .line 344
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v9

    invoke-interface {v9}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 345
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 347
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->loadDefaultSettings()Z

    .line 349
    const v9, 0x7f050003

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 351
    const-string v9, "pref_key_sms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 353
    .local v5, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-nez v9, :cond_0

    .line 354
    const-string v9, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 356
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-nez v9, :cond_1

    .line 357
    const-string v9, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 365
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 368
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 369
    const-string v9, "pref_key_manage_smsc_address"

    const-string v10, ""

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 370
    .local v8, summary_smsc:Ljava/lang/String;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 371
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090155

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    .end local v8           #summary_smsc:Ljava/lang/String;
    check-cast v8, Ljava/lang/String;

    .line 372
    .restart local v8       #summary_smsc:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v9

    const-string v10, "pref_key_manage_smsc_address"

    invoke-virtual {v9, v10}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/EditTextPreference;

    .line 373
    .local v7, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v7, :cond_3

    .line 374
    invoke-virtual {v7, v8}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object v9, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v7, v9}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    .end local v7           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v8           #summary_smsc:Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 382
    const-string v9, "LanguageCount"

    const/16 v10, 0x9

    invoke-interface {v4, v9, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 383
    .local v2, langCount:I
    const/4 v9, 0x1

    if-le v2, v9, :cond_6

    .line 384
    const-string v9, "pref_key_cb_language"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const v10, 0x7f0900ab

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 391
    .end local v2           #langCount:I
    :cond_4
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v9

    if-nez v9, :cond_5

    .line 392
    const-string v9, "pref_key_cb_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 394
    .local v0, cbOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 397
    .end local v0           #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_5
    const-string v9, "pref_key_sms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 398
    .local v6, smsOptions:Landroid/preference/PreferenceCategory;
    const-string v9, "pref_key_sms_reply_path"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 399
    const-string v9, "pref_key_sms_input_mode"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 401
    const-string v9, "pref_key_mms_settings"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 405
    .local v3, mmsOptions:Landroid/preference/PreferenceCategory;
    const-string v9, "pref_key_mms_read_reports"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 406
    const-string v9, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 409
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 410
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 412
    return-void

    .line 386
    .end local v3           #mmsOptions:Landroid/preference/PreferenceCategory;
    .end local v6           #smsOptions:Landroid/preference/PreferenceCategory;
    .restart local v2       #langCount:I
    :cond_6
    const-string v9, "pref_key_cb_language"

    invoke-virtual {p0, v9}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    const v10, 0x7f0900ac

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {p0, v10, v11}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 269
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f090093

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 272
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 248
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const v1, 0x7f090093

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v4, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 251
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 256
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 258
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 262
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v1}, Lcom/android/mms/ui/NumberPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 266
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const-string v7, "pref_key_sms_settings"

    const-string v6, "pref_key_mms_settings"

    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v5, 0x7f050003

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 120
    const-string v5, "pref_key_sms_settings"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 122
    .local v2, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_0

    .line 123
    const-string v5, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 125
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_1

    .line 126
    const-string v5, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 134
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v5

    if-nez v5, :cond_2

    .line 135
    const-string v5, "pref_key_cb_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 137
    .local v0, cbOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 140
    .end local v0           #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v5

    if-nez v5, :cond_3

    .line 142
    const-string v5, "pref_key_mms_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 144
    .local v1, mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 146
    const-string v5, "pref_key_storage_settings"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 148
    .local v4, storageOptions:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 151
    .end local v1           #mmsOptions:Landroid/preference/PreferenceCategory;
    .end local v4           #storageOptions:Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v5, "input_method"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodManager;

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 163
    const-string v5, "pref_key_sms_settings"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 165
    .local v3, smsOptions:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_key_sms_reply_path"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 166
    const-string v5, "pref_key_sms_input_mode"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    const-string v5, "pref_key_mms_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 172
    .restart local v1       #mmsOptions:Landroid/preference/PreferenceCategory;
    const-string v5, "pref_key_mms_read_reports"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    const-string v5, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v5}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 177
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 180
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 181
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 182
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 430
    packed-switch p1, :pswitch_data_0

    .line 448
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 432
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f090132

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f090133

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    new-instance v2, Lcom/android/mms/ui/MessagingPreferenceActivity$5;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$5;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 430
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 276
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 277
    const v0, 0x7f090088

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020053

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 279
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 284
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 293
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 286
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 291
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 239
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 241
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 244
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 311
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 312
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f090099

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 318
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 335
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 319
    :cond_1
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 320
    new-instance v0, Lcom/android/mms/ui/NumberPickerDialog;

    iget-object v2, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1, p0}, Lcom/android/mms/util/Recycler;->getMessageLimit(Landroid/content/Context;)I

    move-result v3

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMinLimit()I

    move-result v4

    iget-object v1, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    invoke-virtual {v1}, Lcom/android/mms/util/Recycler;->getMessageMaxLimit()I

    move-result v5

    const v6, 0x7f09009a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/NumberPickerDialog;-><init>(Landroid/content/Context;Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;IIII)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 326
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 327
    :cond_2
    const-string v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 328
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 329
    :cond_3
    const-string v0, "pref_key_mms_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 330
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    .line 331
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const-string v10, "pref_key_manage_smsc_address"

    .line 187
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 189
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 191
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 193
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090155

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 194
    .local v3, not_set:Ljava/lang/String;
    const-string v7, "pref_key_manage_smsc_address"

    invoke-interface {v4, v10, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 196
    .local v6, summary_smsc:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    const-string v8, "pref_key_manage_smsc_address"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    .line 197
    .local v5, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v5, :cond_0

    .line 198
    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 199
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 203
    :cond_0
    const-string v7, "LanguageCount"

    const/16 v8, 0x9

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 204
    .local v2, langCount:I
    const-string v7, "pref_key_cb_language"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 206
    .local v1, cbPreference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 207
    if-eq v2, v9, :cond_3

    .line 208
    const v7, 0x7f0900ab

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 212
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 217
    .end local v1           #cbPreference:Landroid/preference/Preference;
    .end local v2           #langCount:I
    .end local v3           #not_set:Ljava/lang/String;
    .end local v5           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v6           #summary_smsc:Ljava/lang/String;
    :cond_2
    const-string v7, "pref_key_auto_delete"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 218
    .local v0, autoDeletePrefs:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_4

    .line 219
    new-instance v7, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 233
    :goto_1
    return-void

    .line 210
    .end local v0           #autoDeletePrefs:Landroid/preference/CheckBoxPreference;
    .restart local v1       #cbPreference:Landroid/preference/Preference;
    .restart local v2       #langCount:I
    .restart local v3       #not_set:Ljava/lang/String;
    .restart local v5       #smscPrefs:Landroid/preference/EditTextPreference;
    .restart local v6       #summary_smsc:Ljava/lang/String;
    :cond_3
    const v7, 0x7f0900ac

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    .end local v1           #cbPreference:Landroid/preference/Preference;
    .end local v2           #langCount:I
    .end local v3           #not_set:Ljava/lang/String;
    .end local v5           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v6           #summary_smsc:Ljava/lang/String;
    .restart local v0       #autoDeletePrefs:Landroid/preference/CheckBoxPreference;
    :cond_4
    const-string v7, "Mms/MessagingPreferenceActivity"

    const-string v8, "[onPreferenceChange] No Delete old messages :"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 496
    const-string v0, "Mms/MessagingPreferenceActivity"

    const-string v1, "[SMS] onSharedPreferenceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    const-string v0, "pref_key_cb_settings_activation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 504
    :cond_0
    return-void
.end method
