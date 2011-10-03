.class public Lcom/android/settings/SoundSettings;
.super Landroid/preference/PreferenceActivity;
.source "SoundSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final FALLBACK_EMERGENCY_TONE_VALUE:I = 0x0

.field private static final FALLBACK_SCREEN_TIMEOUT_VALUE:I = 0x7530

.field private static final KEY_DTMF_TONE:Ljava/lang/String; = "dtmf_tone"

.field private static final KEY_EMERGENCY_TONE:Ljava/lang/String; = "emergency_tone"

.field private static final KEY_HAPTIC_FEEDBACK:Ljava/lang/String; = "haptic_feedback"

.field private static final KEY_LOCK_SOUNDS:Ljava/lang/String; = "lock_sounds"

.field private static final KEY_NOTIFICATION_PULSE:Ljava/lang/String; = "notification_pulse"

.field private static final KEY_SILENT:Ljava/lang/String; = "silent"

.field private static final KEY_SOUND_EFFECTS:Ljava/lang/String; = "sound_effects"

.field private static final KEY_SOUND_SETTINGS:Ljava/lang/String; = "sound_settings"

.field private static final KEY_VIBRATE:Ljava/lang/String; = "vibrate"

.field private static final KEY_VIBRATION_INTENSITY:Ljava/lang/String; = "vibration_feedback_intensity"

.field private static final TAG:Ljava/lang/String; = "SoundSettings"

.field private static final VALUE_VIBRATE_ALWAYS:Ljava/lang/String; = "always"

.field private static final VALUE_VIBRATE_NEVER:Ljava/lang/String; = "never"

.field private static final VALUE_VIBRATE_ONLY_SILENT:Ljava/lang/String; = "silent"

.field private static final VALUE_VIBRATE_UNLESS_SILENT:Ljava/lang/String; = "notsilent"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mDtmfTone:Landroid/preference/CheckBoxPreference;

.field private mHapticFeedback:Landroid/preference/CheckBoxPreference;

.field private mLockSounds:Landroid/preference/CheckBoxPreference;

.field private mNotificationPulse:Landroid/preference/CheckBoxPreference;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerVolume:Lcom/android/settings/RingerVolumePreference;

.field private mSilent:Landroid/preference/CheckBoxPreference;

.field private mSoundEffects:Landroid/preference/CheckBoxPreference;

.field private mSoundSettings:Landroid/preference/PreferenceGroup;

.field private mVibrate:Landroid/preference/ListPreference;

.field private mVibrationIntensity:Lcom/android/settings/VibrationFeedbackPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settings/SoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/SoundSettings$1;-><init>(Lcom/android/settings/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/SoundSettings;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/SoundSettings;)Lcom/android/settings/RingerVolumePreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mRingerVolume:Lcom/android/settings/RingerVolumePreference;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/settings/SoundSettings;Lcom/android/settings/RingerVolumePreference;)Lcom/android/settings/RingerVolumePreference;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/SoundSettings;->mRingerVolume:Lcom/android/settings/RingerVolumePreference;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/SoundSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    return-void
.end method

.method private getPhoneVibrateSettingValue()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v5, :cond_1

    move v1, v5

    .line 199
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4}, Landroid/media/AudioManager;->getVibrateSetting(I)I

    move-result v0

    .line 202
    .local v0, callsVibrateSetting:I
    if-eqz v1, :cond_3

    .line 203
    if-nez v0, :cond_0

    .line 205
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v6}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 209
    :cond_0
    if-ne v0, v5, :cond_2

    .line 210
    const-string v2, "always"

    .line 224
    :goto_1
    return-object v2

    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    move v1, v4

    .line 193
    goto :goto_0

    .line 212
    .restart local v0       #callsVibrateSetting:I
    .restart local v1       #vibeInSilent:Z
    :cond_2
    const-string v2, "silent"

    goto :goto_1

    .line 215
    :cond_3
    if-ne v0, v6, :cond_4

    .line 217
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v4, v4}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 221
    :cond_4
    if-ne v0, v5, :cond_5

    .line 222
    const-string v2, "notsilent"

    goto :goto_1

    .line 224
    :cond_5
    const-string v2, "never"

    goto :goto_1
.end method

.method private setPhoneVibrateSettingValue(Ljava/lang/String;)V
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 233
    const-string v2, "notsilent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 234
    const/4 v0, 0x1

    .line 235
    .local v0, callsVibrateSetting:I
    const/4 v1, 0x0

    .line 247
    .local v1, vibeInSilent:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    if-eqz v1, :cond_4

    move v4, v6

    :goto_1
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_5

    move v3, v6

    :goto_2
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 259
    :cond_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v5, v0}, Landroid/media/AudioManager;->setVibrateSetting(II)V

    .line 262
    return-void

    .line 236
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_1
    const-string v2, "never"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 237
    const/4 v0, 0x0

    .line 238
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x0

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 239
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_2
    const-string v2, "silent"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 240
    const/4 v0, 0x2

    .line 241
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    .line 243
    .end local v0           #callsVibrateSetting:I
    .end local v1           #vibeInSilent:Z
    :cond_3
    const/4 v0, 0x1

    .line 244
    .restart local v0       #callsVibrateSetting:I
    const/4 v1, 0x1

    .restart local v1       #vibeInSilent:Z
    goto :goto_0

    :cond_4
    move v4, v5

    .line 247
    goto :goto_1

    :cond_5
    move v3, v5

    .line 254
    goto :goto_2
.end method

.method private updateState(Z)V
    .locals 9
    .parameter "force"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 266
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    .line 271
    .local v2, ringerMode:I
    const/4 v5, 0x2

    if-eq v2, v5, :cond_4

    move v4, v8

    .line 274
    .local v4, silentOrVibrateMode:Z
    :goto_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v5

    if-ne v4, v5, :cond_0

    if-eqz p1, :cond_1

    .line 275
    :cond_0
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v5, v4}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 278
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/SoundSettings;->getPhoneVibrateSettingValue()Ljava/lang/String;

    move-result-object v1

    .line 280
    .local v1, phoneVibrateSetting:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz p1, :cond_3

    .line 281
    :cond_2
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 283
    :cond_3
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    iget-object v6, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "mode_ringer_streams_affected"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 287
    .local v3, silentModeStreams:I
    and-int/lit8 v5, v3, 0x10

    if-eqz v5, :cond_5

    move v0, v8

    .line 288
    .local v0, isAlarmInclSilentMode:Z
    :goto_1
    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-eqz v0, :cond_6

    const v6, 0x7f090239

    :goto_2
    invoke-virtual {v5, v6}, Landroid/preference/CheckBoxPreference;->setSummary(I)V

    .line 291
    return-void

    .end local v0           #isAlarmInclSilentMode:Z
    .end local v1           #phoneVibrateSetting:Ljava/lang/String;
    .end local v3           #silentModeStreams:I
    .end local v4           #silentOrVibrateMode:Z
    :cond_4
    move v4, v7

    .line 271
    goto :goto_0

    .restart local v1       #phoneVibrateSetting:Ljava/lang/String;
    .restart local v3       #silentModeStreams:I
    .restart local v4       #silentOrVibrateMode:Z
    :cond_5
    move v0, v7

    .line 287
    goto :goto_1

    .line 288
    .restart local v0       #isAlarmInclSilentMode:Z
    :cond_6
    const v6, 0x7f090238

    goto :goto_2
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v10, "dtmf_tone"

    const-string v8, "emergency_tone"

    .line 111
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 113
    .local v2, resolver:Landroid/content/ContentResolver;
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    .line 115
    .local v0, activePhoneType:I
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioManager;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 117
    const v4, 0x7f040024

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->addPreferencesFromResource(I)V

    .line 119
    if-eq v9, v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    const-string v5, "emergency_tone"

    invoke-virtual {p0, v8}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 124
    :cond_0
    const-string v4, "silent"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    .line 126
    const-string v4, "vibrate"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    .line 127
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    invoke-virtual {v4, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 129
    const-string v4, "dtmf_tone"

    invoke-virtual {p0, v10}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    .line 130
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 131
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    const-string v5, "dtmf_tone"

    invoke-static {v2, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v5, v7

    :goto_0
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 133
    const-string v4, "sound_effects"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    .line 134
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 135
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    const-string v5, "sound_effects_enabled"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v5, v7

    :goto_1
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 137
    const-string v4, "haptic_feedback"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    .line 138
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 139
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    :goto_2
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 141
    const-string v4, "vibration_feedback_intensity"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/VibrationFeedbackPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mVibrationIntensity:Lcom/android/settings/VibrationFeedbackPreference;

    .line 142
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mVibrationIntensity:Lcom/android/settings/VibrationFeedbackPreference;

    const-string v5, "haptic_feedback_enabled"

    invoke-static {v2, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_5

    move v5, v7

    :goto_3
    invoke-virtual {v4, v5}, Lcom/android/settings/VibrationFeedbackPreference;->setEnabled(Z)V

    .line 144
    const-string v4, "lock_sounds"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    .line 145
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 146
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    const-string v5, "lockscreen_sounds_enabled"

    invoke-static {v2, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_6

    move v5, v7

    :goto_4
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 149
    if-ne v9, v0, :cond_1

    .line 150
    const-string v4, "emergency_tone"

    invoke-virtual {p0, v8}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 152
    .local v1, emergencyTonePreference:Landroid/preference/ListPreference;
    const-string v4, "emergency_tone"

    invoke-static {v2, v8, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 157
    .end local v1           #emergencyTonePreference:Landroid/preference/ListPreference;
    :cond_1
    const-string v4, "sound_settings"

    invoke-virtual {p0, v4}, Lcom/android/settings/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    .line 158
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    const-string v5, "notification_pulse"

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/CheckBoxPreference;

    iput-object v4, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    .line 160
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_7

    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f06

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 162
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundSettings:Landroid/preference/PreferenceGroup;

    iget-object v5, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :goto_5
    return-void

    :cond_2
    move v5, v6

    .line 131
    goto/16 :goto_0

    :cond_3
    move v5, v6

    .line 135
    goto/16 :goto_1

    :cond_4
    move v5, v6

    .line 139
    goto/16 :goto_2

    :cond_5
    move v5, v6

    .line 142
    goto :goto_3

    :cond_6
    move v5, v6

    .line 146
    goto :goto_4

    .line 165
    :cond_7
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    const-string v5, "notification_light_pulse"

    invoke-static {v2, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v7, :cond_8

    move v5, v7

    :goto_6
    invoke-virtual {v4, v5}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 167
    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    .line 168
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 169
    .local v3, snfe:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SoundSettings"

    const-string v5, "notification_light_pulse not found"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .end local v3           #snfe:Landroid/provider/Settings$SettingNotFoundException;
    :cond_8
    move v5, v6

    .line 165
    goto :goto_6
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 187
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 189
    iget-object v0, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/SoundSettings;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 190
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const-string v4, "emergency_tone"

    .line 339
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, key:Ljava/lang/String;
    const-string v3, "emergency_tone"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 341
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 343
    .local v2, value:I
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "emergency_tone"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    .end local v2           #value:I
    :cond_0
    :goto_0
    const/4 v3, 0x1

    return v3

    .line 345
    .restart local v2       #value:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 346
    .local v0, e:Ljava/lang/NumberFormatException;
    const-string v3, "SoundSettings"

    const-string v4, "could not persist emergency tone setting"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 348
    .end local v0           #e:Ljava/lang/NumberFormatException;
    .end local v2           #value:I
    .restart local p2
    :cond_1
    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mVibrate:Landroid/preference/ListPreference;

    if-ne p1, v3, :cond_0

    .line 349
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->setPhoneVibrateSettingValue(Ljava/lang/String;)V

    .line 350
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 295
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_4

    .line 296
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSilent:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 297
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "vibrate_in_silent"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v5, v2, :cond_1

    move v1, v5

    .line 301
    .local v1, vibeInSilent:Z
    :goto_0
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_2

    move v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 307
    .end local v1           #vibeInSilent:Z
    :goto_2
    invoke-direct {p0, v6}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 335
    :cond_0
    :goto_3
    return v5

    :cond_1
    move v1, v6

    .line 297
    goto :goto_0

    .restart local v1       #vibeInSilent:Z
    :cond_2
    move v3, v6

    .line 301
    goto :goto_1

    .line 305
    .end local v1           #vibeInSilent:Z
    :cond_3
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_2

    .line 308
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_6

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mDtmfTone:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_4
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    :cond_5
    move v4, v6

    goto :goto_4

    .line 312
    :cond_6
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_9

    .line 313
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 314
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->loadSoundEffects()V

    .line 318
    :goto_5
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "sound_effects_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mSoundEffects:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v5

    :goto_6
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 316
    :cond_7
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->unloadSoundEffects()V

    goto :goto_5

    :cond_8
    move v4, v6

    .line 318
    goto :goto_6

    .line 321
    :cond_9
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_b

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "haptic_feedback_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v5

    :goto_7
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 324
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mVibrationIntensity:Lcom/android/settings/VibrationFeedbackPreference;

    iget-object v3, p0, Lcom/android/settings/SoundSettings;->mHapticFeedback:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v3}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings/VibrationFeedbackPreference;->setEnabled(Z)V

    goto :goto_3

    :cond_a
    move v4, v6

    .line 322
    goto :goto_7

    .line 325
    :cond_b
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_d

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lockscreen_sounds_enabled"

    iget-object v4, p0, Lcom/android/settings/SoundSettings;->mLockSounds:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v4}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_c

    move v4, v5

    :goto_8
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_c
    move v4, v6

    goto :goto_8

    .line 329
    :cond_d
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    if-ne p2, v2, :cond_0

    .line 330
    iget-object v2, p0, Lcom/android/settings/SoundSettings;->mNotificationPulse:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    .line 331
    .local v0, value:Z
    invoke-virtual {p0}, Lcom/android/settings/SoundSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "notification_light_pulse"

    if-eqz v0, :cond_e

    move v4, v5

    :goto_9
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_3

    :cond_e
    move v4, v6

    goto :goto_9
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 177
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 179
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/SoundSettings;->updateState(Z)V

    .line 181
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 182
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/settings/SoundSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/SoundSettings;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 183
    return-void
.end method
