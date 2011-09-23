.class public Lcom/sec/android/app/cradle/CalendarPreferenceActivity;
.super Landroid/preference/PreferenceActivity;
.source "CalendarPreferenceActivity.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# static fields
.field static final ALERT_TYPE_ALERTS:Ljava/lang/String; = "0"

.field static final ALERT_TYPE_OFF:Ljava/lang/String; = "2"

.field static final ALERT_TYPE_STATUS_BAR:Ljava/lang/String; = "1"

.field static final KEY_ALERTS_RINGTONE:Ljava/lang/String; = "preferences_alerts_ringtone"

.field static final KEY_ALERTS_TYPE:Ljava/lang/String; = "preferences_alerts_type"

.field static final KEY_ALERTS_VIBRATE:Ljava/lang/String; = "preferences_alerts_vibrate"

.field static final KEY_DEFAULT_REMINDER:Ljava/lang/String; = "preferences_default_reminder"

.field static final KEY_DETAILED_VIEW:Ljava/lang/String; = "preferredDetailedView"

.field static final KEY_HIDE_DECLINED:Ljava/lang/String; = "preferences_hide_declined"

.field static final KEY_START_VIEW:Ljava/lang/String; = "startView"


# instance fields
.field mAlertType:Landroid/preference/ListPreference;

.field mRingtone:Landroid/preference/RingtonePreference;

.field mVibrate:Landroid/preference/CheckBoxPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private updateChildPreferences()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    iget-object v0, p0, Lcom/sec/android/app/cradle/CalendarPreferenceActivity;->mAlertType:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    iget-object v0, p0, Lcom/sec/android/app/cradle/CalendarPreferenceActivity;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 62
    iget-object v0, p0, Lcom/sec/android/app/cradle/CalendarPreferenceActivity;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lcom/sec/android/app/cradle/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v2}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/cradle/CalendarPreferenceActivity;->mVibrate:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, v3}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 66
    iget-object v0, p0, Lcom/sec/android/app/cradle/CalendarPreferenceActivity;->mRingtone:Landroid/preference/RingtonePreference;

    invoke-virtual {v0, v3}, Landroid/preference/RingtonePreference;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 49
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1
    .parameter "sharedPreferences"
    .parameter "key"

    .prologue
    .line 54
    const-string v0, "preferences_alerts_type"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/sec/android/app/cradle/CalendarPreferenceActivity;->updateChildPreferences()V

    .line 57
    :cond_0
    return-void
.end method
