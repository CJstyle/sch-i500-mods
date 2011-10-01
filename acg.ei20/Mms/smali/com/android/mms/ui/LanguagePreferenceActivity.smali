.class public Lcom/android/mms/ui/LanguagePreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "LanguagePreferenceActivity.java"


# instance fields
.field private bChanged:Z

.field private mlangcount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private setCount(I)V
    .locals 0
    .parameter "count"

    .prologue
    .line 77
    iput p1, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    .line 78
    return-void
.end method

.method private validate(I)Z
    .locals 6
    .parameter "check"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 85
    const-string v3, "pref_key_cb_language"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 86
    .local v1, langgroup:Landroid/preference/PreferenceScreen;
    invoke-direct {p0, v4}, Lcom/android/mms/ui/LanguagePreferenceActivity;->setCount(I)V

    .line 87
    const/4 v0, 0x1

    .local v0, index:I
    :goto_0
    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 88
    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 89
    .local v2, preference:Landroid/preference/CheckBoxPreference;
    packed-switch p1, :pswitch_data_0

    .line 87
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :pswitch_0
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 94
    :pswitch_1
    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 97
    :pswitch_2
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v5

    .line 106
    .end local v2           #preference:Landroid/preference/CheckBoxPreference;
    :goto_2
    return v3

    .line 101
    .restart local v2       #preference:Landroid/preference/CheckBoxPreference;
    :pswitch_3
    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 102
    iget v3, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    goto :goto_1

    .end local v2           #preference:Landroid/preference/CheckBoxPreference;
    :cond_1
    move v3, v4

    .line 106
    goto :goto_2

    .line 89
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getCheckedCount()I
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    .line 70
    iget v0, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->mlangcount:I

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x0

    .line 57
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 58
    const v2, 0x7f050001

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->addPreferencesFromResource(I)V

    .line 59
    const-string v2, "pref_key_cb_language"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 60
    .local v0, langgroup:Landroid/preference/PreferenceScreen;
    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v1

    .line 61
    .local v1, preference:Landroid/preference/Preference;
    const v2, 0x7f03002a

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 62
    iput-boolean v3, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    .line 63
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    .line 44
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 45
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 46
    .local v1, sharedpref:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 47
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "LanguageCount"

    invoke-virtual {p0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->getCheckedCount()I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 48
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 49
    iget-boolean v2, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/android/mms/ui/LanguagePreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/mms/ui/ChannelUtils;->setCbSettings(Landroid/content/Context;Landroid/content/SharedPreferences;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 114
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const-string v4, "pref_select_all_key"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 115
    move-object v0, p2

    check-cast v0, Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-direct {p0, v5}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    .line 127
    :goto_0
    iput-boolean v5, p0, Lcom/android/mms/ui/LanguagePreferenceActivity;->bChanged:Z

    .line 128
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 118
    :cond_0
    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    goto :goto_0

    .line 120
    :cond_1
    const-string v3, "pref_key_cb_language"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/LanguagePreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    .line 121
    .local v1, langgroup:Landroid/preference/PreferenceScreen;
    invoke-virtual {v1, v6}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    .line 122
    .local v2, selectallpreference:Landroid/preference/CheckBoxPreference;
    const/4 v3, 0x2

    invoke-direct {p0, v3}, Lcom/android/mms/ui/LanguagePreferenceActivity;->validate(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v2, v6}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0

    .line 125
    :cond_2
    invoke-virtual {v2, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_0
.end method
