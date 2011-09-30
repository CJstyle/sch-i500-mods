.class public Lcom/android/mms/ui/CMASPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CMASPreferenceActivity.java"


# instance fields
.field private isPlaying:Z

.field private mplayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isPlaying:Z

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const-string v4, "#cmas#type##testmessage#enabled"

    .line 43
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const v2, 0x7f050002

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASPreferenceActivity;->addPreferencesFromResource(I)V

    .line 46
    const-string v2, "ril.hidden_menu_access"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 47
    const-string v2, "pref_key_cmas_settings"

    invoke-virtual {p0, v2}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 50
    .local v0, TestCmasCategory:Landroid/preference/PreferenceCategory;
    const-string v2, "#cmas#type##testmessage#enabled"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/CheckBoxPreference;

    .line 51
    .local v1, preference:Landroid/preference/CheckBoxPreference;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 53
    const-string v2, "#cmas#type##testmessage#enabled"

    invoke-virtual {p0, v4}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 55
    .end local v0           #TestCmasCategory:Landroid/preference/PreferenceCategory;
    .end local v1           #preference:Landroid/preference/CheckBoxPreference;
    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 61
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090223

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, str:Ljava/lang/String;
    const-string v1, "pref_key_emergency_alert"

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v3, v3}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 66
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 67
    iget-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 68
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 70
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->isPlaying:Z

    .line 71
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 6
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const-string v5, "CMASPreferenceActivity"

    .line 87
    const-string v3, "pref_key_emergency_alert"

    invoke-virtual {p0, v3}, Lcom/android/mms/ui/CMASPreferenceActivity;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    if-ne p2, v3, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "cmas_sound"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, ringtoneStr:Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 93
    :try_start_0
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    .line 94
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->reset()V

    .line 95
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->release()V

    .line 96
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 97
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090223

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    .end local v2           #ringtoneStr:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v3

    return v3

    .line 99
    .restart local v2       #ringtoneStr:Ljava/lang/String;
    :cond_1
    :try_start_1
    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 100
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 101
    .local v1, mediaURI:Landroid/net/Uri;
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 102
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepare()V

    .line 103
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->start()V

    .line 104
    iget-object v3, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 105
    invoke-virtual {p0}, Lcom/android/mms/ui/CMASPreferenceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090224

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    const-string v3, "CMASPreferenceActivity"

    const-string v4, "Am now in playing"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 109
    .end local v1           #mediaURI:Landroid/net/Uri;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 110
    .local v0, ex:Ljava/lang/Exception;
    const-string v3, "CMASPreferenceActivity"

    const-string v3, "Exception in tree click"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 113
    .end local v0           #ex:Ljava/lang/Exception;
    :cond_2
    const-string v3, "CMASPreferenceActivity"

    const-string v3, "Ringtone str not found"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 77
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 79
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 80
    iget-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/CMASPreferenceActivity;->mplayer:Landroid/media/MediaPlayer;

    .line 83
    :cond_0
    return-void
.end method
