.class public Lcom/android/browser/BrowserPreferencesPage;
.super Landroid/preference/PreferenceActivity;
.source "BrowserPreferencesPage.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private LOGTAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 44
    const-string v0, "BrowserPreferencesPage"

    iput-object v0, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method private getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 355
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060067

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 356
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060068

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 359
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 360
    const-string v3, ""

    move-object v3, v5

    .line 369
    :goto_0
    return-object v3

    .line 363
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 364
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    aget-object v3, v2, v1

    goto :goto_0

    .line 363
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 369
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method

.method private getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 335
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 337
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06005f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 341
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 342
    const-string v3, ""

    move-object v3, v5

    .line 351
    :goto_0
    return-object v3

    .line 345
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 346
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 347
    aget-object v3, v2, v1

    goto :goto_0

    .line 345
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 351
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method

.method private getVisualTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "enumName"

    .prologue
    const-string v5, ""

    .line 315
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060064

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    .line 317
    .local v2, visualNames:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060065

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    .line 321
    .local v0, enumNames:[Ljava/lang/CharSequence;
    array-length v3, v2

    array-length v4, v0

    if-eq v3, v4, :cond_0

    .line 322
    const-string v3, ""

    move-object v3, v5

    .line 331
    :goto_0
    return-object v3

    .line 325
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 326
    aget-object v3, v0, v1

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 327
    aget-object v3, v2, v1

    goto :goto_0

    .line 325
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 331
    :cond_2
    const-string v3, ""

    move-object v3, v5

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v3, "default_text_encoding"

    const-string v7, "download_default_storyage"

    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const v0, 0x7f050002

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 54
    const-string v0, "homepage"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 55
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "homepage"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 58
    check-cast v0, Lcom/android/browser/BrowserHomepagePreference;

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "currentPage"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/browser/BrowserHomepagePreference;->setCurrentPage(Ljava/lang/String;)V

    .line 61
    const-string v0, "reset_default_preferences"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 62
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 70
    const-string v0, "default_zoom"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 71
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 72
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "default_zoom"

    invoke-interface {v1, v2, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    const-string v0, "default_text_encoding"

    invoke-virtual {p0, v3}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 77
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "default_text_encoding"

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060068

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 85
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "default_download_storage"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 87
    const-string v3, "download_default_storyage"

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v7, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 89
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    const-string v0, "download_default_storyage"

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 98
    const-string v0, "download_default_storyage"

    invoke-virtual {p0, v7}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 111
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 115
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v4

    .line 121
    :goto_0
    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "download_default_storyage"

    invoke-interface {v2, v7, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    if-ne v5, v4, :cond_2

    if-ne v1, v4, :cond_2

    .line 126
    invoke-direct {p0, v2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 127
    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 141
    :cond_0
    :goto_1
    const-string v0, "privacy_clear_history"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 144
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/browser/BrowserSettings;->showDebugSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    const v0, 0x7f050003

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->addPreferencesFromResource(I)V

    .line 148
    :cond_1
    const-string v0, "website_settings"

    invoke-virtual {p0, v0}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/WebsiteSettingsActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 151
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 152
    return-void

    .line 129
    :cond_2
    if-ne v5, v4, :cond_3

    if-nez v1, :cond_3

    .line 131
    const-string v1, "PHONE"

    .line 132
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 134
    :cond_3
    if-nez v5, :cond_0

    if-ne v1, v4, :cond_0

    .line 136
    const-string v1, "MEMORY_CARD"

    .line 137
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 186
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/browser/BrowserSettings;->syncSharedPreferences(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 189
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 13
    .parameter "pref"
    .parameter "objValue"

    .prologue
    const/4 v9, 0x2

    const/4 v12, -0x1

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 192
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "reset_default_preferences"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 193
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v6, v0

    .line 194
    .local v6, value:Ljava/lang/Boolean;
    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/android/browser/BrowserPreferencesPage;->finish()V

    .end local v6           #value:Ljava/lang/Boolean;
    :cond_0
    move v7, v11

    .line 291
    .end local p1
    .end local p2
    :goto_0
    return v7

    .line 197
    .restart local p1
    .restart local p2
    :cond_1
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "homepage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 198
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v6, v0

    .line 199
    .local v6, value:Ljava/lang/String;
    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-eq v7, v12, :cond_4

    move v4, v10

    .line 200
    .local v4, needUpdate:Z
    :goto_1
    if-eqz v4, :cond_2

    .line 201
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    const-string v9, "%20"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 203
    :cond_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_3

    .line 204
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "http://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 205
    const/4 v4, 0x1

    .line 208
    :cond_3
    invoke-virtual {p1, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 209
    if-eqz v4, :cond_5

    .line 212
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1
    invoke-virtual {p1, v6}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    move v7, v11

    .line 217
    goto :goto_0

    .end local v4           #needUpdate:Z
    .restart local p1
    :cond_4
    move v4, v11

    .line 199
    goto :goto_1

    .restart local v4       #needUpdate:Z
    :cond_5
    move v7, v10

    .line 219
    goto :goto_0

    .line 224
    .end local v4           #needUpdate:Z
    .end local v6           #value:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default_zoom"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 225
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultZoomName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v7, v10

    .line 226
    goto :goto_0

    .line 227
    .restart local p2
    :cond_7
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "default_text_encoding"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 229
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-direct {p0, p2}, Lcom/android/browser/BrowserPreferencesPage;->getVisualTextEncodingName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move v7, v10

    .line 230
    goto/16 :goto_0

    .line 231
    .restart local p2
    :cond_8
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "privacy_clear_history"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-ne v7, v10, :cond_9

    .line 235
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    const-string v8, "android.intent.extra.TEXT"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v12, v7}, Lcom/android/browser/BrowserPreferencesPage;->setResult(ILandroid/content/Intent;)V

    move v7, v10

    .line 237
    goto/16 :goto_0

    .line 240
    :cond_9
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    const-string v8, "download_default_storyage"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, bMoviNandMounted:Z
    const/4 v3, 0x0

    .line 243
    .local v3, bSdCardMounted:Z
    const/4 v5, 0x0

    .line 251
    .local v5, status:Ljava/lang/String;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v5

    .line 255
    const-string v7, "mounted"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 256
    const/4 v3, 0x1

    .line 259
    :cond_a
    invoke-virtual {p1, v11}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 261
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v1, v0

    .line 262
    .local v1, StorageName:Ljava/lang/String;
    if-ne v2, v10, :cond_d

    if-ne v3, v10, :cond_d

    .line 263
    invoke-virtual {p1, v10}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 264
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 265
    const-string v7, "PHONE"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 266
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 267
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange : StorageName is PHONE"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    move v7, v10

    .line 289
    goto/16 :goto_0

    .line 269
    :cond_c
    const-string v7, "MEMORY_CARD"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 270
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 271
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange : StorageName is MEMORY_CARD"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 274
    :cond_d
    if-ne v2, v10, :cond_e

    if-nez v3, :cond_e

    .line 275
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange():StorageName is PHONE"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v1, "PHONE"

    .line 278
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 279
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v10}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    goto :goto_2

    .line 281
    :cond_e
    if-nez v2, :cond_b

    if-ne v3, v10, :cond_b

    .line 282
    iget-object v7, p0, Lcom/android/browser/BrowserPreferencesPage;->LOGTAG:Ljava/lang/String;

    const-string v8, "onPreferenceChange():StorageName is MEMORY_CARD"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    const-string v1, "MEMORY_CARD"

    .line 285
    invoke-static {}, Lcom/android/browser/BrowserSettings;->getInstance()Lcom/android/browser/BrowserSettings;

    move-result-object v7

    invoke-virtual {p1}, Landroid/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v9}, Lcom/android/browser/BrowserSettings;->setDownloadDefaultStorage(Landroid/content/Context;I)V

    .line 286
    invoke-direct {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->getVisualDefaultStorageName(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 161
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 162
    const-string v1, "website_settings"

    invoke-virtual {p0, v1}, Lcom/android/browser/BrowserPreferencesPage;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 164
    .local v0, websiteSettings:Landroid/preference/PreferenceScreen;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 165
    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v1

    new-instance v2, Lcom/android/browser/BrowserPreferencesPage$1;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserPreferencesPage$1;-><init>(Lcom/android/browser/BrowserPreferencesPage;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebStorage;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 172
    invoke-static {}, Landroid/webkit/GeolocationPermissions;->getInstance()Landroid/webkit/GeolocationPermissions;

    move-result-object v1

    new-instance v2, Lcom/android/browser/BrowserPreferencesPage$2;

    invoke-direct {v2, p0, v0}, Lcom/android/browser/BrowserPreferencesPage$2;-><init>(Lcom/android/browser/BrowserPreferencesPage;Landroid/preference/PreferenceScreen;)V

    invoke-virtual {v1, v2}, Landroid/webkit/GeolocationPermissions;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 179
    return-void
.end method
