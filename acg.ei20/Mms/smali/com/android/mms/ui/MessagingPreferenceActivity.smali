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
    .line 94
    const-string v0, "content://sms/smsc"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    .line 436
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$3;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$3;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 443
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$4;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsLimitListener:Lcom/android/mms/ui/NumberPickerDialog$OnNumberSetListener;

    .line 474
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$6;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->restoreDefaultPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MessagingPreferenceActivity;)Lcom/android/mms/util/Recycler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MessagingPreferenceActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    return-void
.end method

.method static synthetic access$500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 68
    sget-object v0, Lcom/android/mms/ui/MessagingPreferenceActivity;->SMSC_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 306
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 307
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f090088

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 308
    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 310
    const v1, 0x7f090147

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 311
    const v1, 0x7f090148

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 312
    const v1, 0x7f090089

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 314
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 315
    return-void
.end method

.method public static convertCreationMode(Ljava/lang/String;)I
    .locals 2
    .parameter "modeName"

    .prologue
    .line 552
    const-string v0, "restricted"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 553
    const/4 v0, 0x0

    .line 557
    :goto_0
    return v0

    .line 554
    :cond_0
    const-string v0, "warning"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 555
    const/4 v0, 0x1

    goto :goto_0

    .line 556
    :cond_1
    const-string v0, "free"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 557
    const/4 v0, 0x2

    goto :goto_0

    .line 559
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

    .line 531
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 532
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_sms_input_mode"

    const-string v3, "Automatic"

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 533
    .local v1, tempStr:Ljava/lang/String;
    const-string v2, "GSM alphabet"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 534
    const/4 v2, 0x0

    .line 540
    :goto_0
    return v2

    .line 535
    :cond_0
    const-string v2, "Unicode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 536
    const/4 v2, 0x1

    goto :goto_0

    .line 537
    :cond_1
    const-string v2, "Automatic"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v4

    .line 538
    goto :goto_0

    :cond_2
    move v2, v4

    .line 540
    goto :goto_0
.end method

.method private restoreDefaultPreferences()V
    .locals 15

    .prologue
    .line 354
    new-instance v2, Lcom/android/mms/util/MessagingCscSetting;

    invoke-direct {v2, p0}, Lcom/android/mms/util/MessagingCscSetting;-><init>(Landroid/content/Context;)V

    .line 355
    .local v2, cscSetting:Lcom/android/mms/util/MessagingCscSetting;
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCurrentSettings()Z

    .line 356
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->storeCscSettings()Z

    .line 358
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 359
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 361
    invoke-static {}, Lcom/android/mms/util/MessagingCscSetting;->loadDefaultSettings()Z

    .line 363
    const v10, 0x7f050004

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 365
    const-string v10, "pref_key_sms_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceCategory;

    .line 367
    .local v6, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-nez v10, :cond_0

    .line 368
    const-string v10, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 370
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-nez v10, :cond_1

    .line 371
    const-string v10, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 379
    :cond_1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 382
    .local v5, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 383
    const-string v10, "pref_key_manage_smsc_address"

    const-string v11, ""

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 384
    .local v9, summary_smsc:Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 385
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090155

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    .end local v9           #summary_smsc:Ljava/lang/String;
    check-cast v9, Ljava/lang/String;

    .line 386
    .restart local v9       #summary_smsc:Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v10

    const-string v11, "pref_key_manage_smsc_address"

    invoke-virtual {v10, v11}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    check-cast v8, Landroid/preference/EditTextPreference;

    .line 387
    .local v8, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v8, :cond_3

    .line 388
    invoke-virtual {v8, v9}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 389
    iget-object v10, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v8, v10}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 395
    .end local v8           #smscPrefs:Landroid/preference/EditTextPreference;
    .end local v9           #summary_smsc:Ljava/lang/String;
    :cond_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 396
    const-string v10, "LanguageCount"

    const/16 v11, 0x9

    invoke-interface {v5, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 397
    .local v3, langCount:I
    const/4 v10, 0x1

    if-le v3, v10, :cond_7

    .line 398
    const-string v10, "pref_key_cb_language"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f0900ab

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 405
    .end local v3           #langCount:I
    :cond_4
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v10

    if-nez v10, :cond_5

    .line 406
    const-string v10, "pref_key_cb_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 408
    .local v0, cbOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 411
    .end local v0           #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_5
    const-string v10, "pref_key_sms_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/PreferenceCategory;

    .line 412
    .local v7, smsOptions:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_sms_reply_path"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 413
    const-string v10, "pref_key_sms_input_mode"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 415
    const-string v10, "pref_key_mms_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 419
    .local v4, mmsOptions:Landroid/preference/PreferenceCategory;
    const-string v10, "pref_key_mms_read_reports"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 420
    const-string v10, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v4, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 424
    const-string v10, "pref_key_cmas_settings"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 425
    .local v1, cmas_recv:Landroid/preference/PreferenceCategory;
    const-string v10, "Mms/MessagingPreferenceActivity"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "restoreDefaultPreferences() : cmas_recv = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eqz v1, :cond_6

    .line 428
    const-string v10, "pref_key_cmas_alerts"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 431
    :cond_6
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 432
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 434
    return-void

    .line 400
    .end local v1           #cmas_recv:Landroid/preference/PreferenceCategory;
    .end local v4           #mmsOptions:Landroid/preference/PreferenceCategory;
    .end local v7           #smsOptions:Landroid/preference/PreferenceCategory;
    .restart local v3       #langCount:I
    :cond_7
    const-string v10, "pref_key_cb_language"

    invoke-virtual {p0, v10}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v10

    const v11, 0x7f0900ac

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {p0, v11, v12}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private setMmsDisplayLimit()V
    .locals 5

    .prologue
    .line 278
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

    .line 281
    return-void
.end method

.method private setSmsDisplayLimit()V
    .locals 5

    .prologue
    .line 257
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

    .line 260
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 265
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 267
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 271
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

    .line 275
    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "icicle"

    .prologue
    const-string v8, "pref_key_sms_settings"

    const-string v7, "pref_key_mms_settings"

    .line 119
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 120
    const v6, 0x7f050004

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->addPreferencesFromResource(I)V

    .line 122
    const-string v6, "pref_key_sms_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceCategory;

    .line 124
    .local v3, smsCategory:Landroid/preference/PreferenceCategory;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_0

    .line 125
    const-string v6, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 127
    :cond_0
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/MmsApp;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_1

    .line 128
    const-string v6, "pref_key_manage_smsc_address"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 136
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v6

    if-nez v6, :cond_2

    .line 137
    const-string v6, "pref_key_cb_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 139
    .local v0, cbOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 142
    .end local v0           #cbOptions:Landroid/preference/PreferenceCategory;
    :cond_2
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v6

    if-nez v6, :cond_3

    .line 144
    const-string v6, "pref_key_mms_settings"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 146
    .local v2, mmsOptions:Landroid/preference/PreferenceCategory;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 148
    const-string v6, "pref_key_storage_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/PreferenceCategory;

    .line 150
    .local v5, storageOptions:Landroid/preference/PreferenceCategory;
    const-string v6, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 153
    .end local v2           #mmsOptions:Landroid/preference/PreferenceCategory;
    .end local v5           #storageOptions:Landroid/preference/PreferenceCategory;
    :cond_3
    const-string v6, "input_method"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/inputmethod/InputMethodManager;

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 165
    const-string v6, "pref_key_sms_settings"

    invoke-virtual {p0, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceCategory;

    .line 167
    .local v4, smsOptions:Landroid/preference/PreferenceCategory;
    const-string v6, "pref_key_sms_reply_path"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 168
    const-string v6, "pref_key_sms_input_mode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    const-string v6, "pref_key_mms_settings"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceCategory;

    .line 174
    .restart local v2       #mmsOptions:Landroid/preference/PreferenceCategory;
    const-string v6, "pref_key_mms_read_reports"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    const-string v6, "pref_key_mms_creation_mode"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 179
    const-string v6, "pref_key_cmas_settings"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceCategory;

    .line 181
    .local v1, cmas_recv:Landroid/preference/PreferenceCategory;
    if-eqz v1, :cond_4

    .line 182
    const-string v6, "pref_key_cmas_alerts"

    invoke-virtual {p0, v6}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 185
    :cond_4
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSmsRecycler:Lcom/android/mms/util/Recycler;

    .line 186
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mMmsRecycler:Lcom/android/mms/util/Recycler;

    .line 189
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setSmsDisplayLimit()V

    .line 190
    invoke-direct {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->setMmsDisplayLimit()V

    .line 191
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 452
    packed-switch p1, :pswitch_data_0

    .line 470
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 454
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

    .line 452
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

    .line 284
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 285
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 286
    const v0, 0x7f090088

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020057

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 288
    return v2
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 293
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 302
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 295
    :pswitch_0
    new-instance v0, Lcom/android/mms/ui/MessagingPreferenceActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$2;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->confirmRestoreDialog(Landroid/content/DialogInterface$OnClickListener;)V

    .line 300
    const/4 v0, 0x1

    goto :goto_0

    .line 293
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 248
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 250
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 253
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 320
    const-string v0, "pref_key_sms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 321
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

    .line 327
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    .line 349
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 328
    :cond_1
    const-string v0, "pref_key_mms_delete_limit"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_2

    .line 329
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

    .line 335
    iget-object v0, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mPikcerDialog:Lcom/android/mms/ui/NumberPickerDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/NumberPickerDialog;->show()V

    goto :goto_0

    .line 336
    :cond_2
    const-string v0, "pref_key_manage_sim_messages"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 337
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 338
    :cond_3
    const-string v0, "pref_key_mms_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-ne p2, v0, :cond_0

    .line 339
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->showDialog(I)V

    .line 340
    const/4 v0, 0x1

    goto :goto_1
.end method

.method protected onResume()V
    .locals 11

    .prologue
    const/4 v9, 0x1

    const-string v10, "pref_key_manage_smsc_address"

    .line 196
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 198
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 200
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 202
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090155

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 203
    .local v3, not_set:Ljava/lang/String;
    const-string v7, "pref_key_manage_smsc_address"

    invoke-interface {v4, v10, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, summary_smsc:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    const-string v8, "pref_key_manage_smsc_address"

    invoke-virtual {v7, v10}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/EditTextPreference;

    .line 206
    .local v5, smscPrefs:Landroid/preference/EditTextPreference;
    if-eqz v5, :cond_0

    .line 207
    invoke-virtual {v5, v6}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v7, p0, Lcom/android/mms/ui/MessagingPreferenceActivity;->mSMSCListener:Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v5, v7}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 212
    :cond_0
    const-string v7, "LanguageCount"

    const/16 v8, 0x9

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 213
    .local v2, langCount:I
    const-string v7, "pref_key_cb_language"

    invoke-virtual {p0, v7}, Lcom/android/mms/ui/MessagingPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 215
    .local v1, cbPreference:Landroid/preference/Preference;
    if-eqz v1, :cond_1

    .line 216
    if-eq v2, v9, :cond_3

    .line 217
    const v7, 0x7f0900ab

    new-array v8, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 221
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v7

    invoke-interface {v7, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 226
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

    .line 227
    .local v0, autoDeletePrefs:Landroid/preference/CheckBoxPreference;
    if-eqz v0, :cond_4

    .line 228
    new-instance v7, Lcom/android/mms/ui/MessagingPreferenceActivity$1;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MessagingPreferenceActivity$1;-><init>(Lcom/android/mms/ui/MessagingPreferenceActivity;)V

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 242
    :goto_1
    return-void

    .line 219
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

    .line 239
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
    .line 518
    const-string v0, "Mms/MessagingPreferenceActivity"

    const-string v1, "[SMS] onSharedPreferenceChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 522
    const-string v0, "pref_key_cb_settings_activation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    invoke-virtual {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 526
    :cond_0
    return-void
.end method
