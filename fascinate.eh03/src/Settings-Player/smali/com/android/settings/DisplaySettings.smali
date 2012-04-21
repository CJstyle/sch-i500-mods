.class public Lcom/android/settings/DisplaySettings;
.super Landroid/preference/PreferenceActivity;
.source "DisplaySettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/DisplaySettings$OrientationObserver;
    }
.end annotation


# instance fields
.field private gSensor:Landroid/preference/PreferenceScreen;

.field private mAccelerometer:Landroid/preference/CheckBoxPreference;

.field private mAnimationScales:[F

.field private mAnimations:Landroid/preference/ListPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockScreen:Landroid/preference/ListPreference;

.field private mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

.field private mPowerSavingMode:Landroid/preference/CheckBoxPreference;

.field private mTvOutSettigs:Landroid/preference/Preference;

.field private mWallpapers:Landroid/preference/PreferenceScreen;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 330
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/DisplaySettings;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method private disableUnusableTimeouts(Landroid/preference/ListPreference;)V
    .locals 13
    .parameter "screenTimeoutPreference"

    .prologue
    .line 139
    const-string v11, "device_policy"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 141
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    if-eqz v0, :cond_0

    const/4 v11, 0x0

    invoke-virtual {v0, v11}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v11

    move-wide v3, v11

    .line 142
    .local v3, maxTimeout:J
    :goto_0
    const-wide/16 v11, 0x0

    cmp-long v11, v3, v11

    if-nez v11, :cond_1

    .line 171
    .end local p0
    :goto_1
    return-void

    .line 141
    .end local v3           #maxTimeout:J
    .restart local p0
    :cond_0
    const-wide/16 v11, 0x0

    move-wide v3, v11

    goto :goto_0

    .line 145
    .restart local v3       #maxTimeout:J
    :cond_1
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 146
    .local v1, entries:[Ljava/lang/CharSequence;
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v10

    .line 147
    .local v10, values:[Ljava/lang/CharSequence;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 148
    .local v5, revisedEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v6, revisedValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    array-length v11, v10

    if-ge v2, v11, :cond_3

    .line 150
    aget-object v11, v10, v2

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 151
    .local v7, timeout:J
    cmp-long v11, v7, v3

    if-gtz v11, :cond_2

    .line 152
    aget-object v11, v1, v2

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    aget-object v11, v10, v2

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 156
    .end local v7           #timeout:J
    :cond_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v1

    if-ne v11, v12, :cond_4

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    array-length v12, v10

    if-eq v11, v12, :cond_5

    .line 157
    :cond_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 159
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/CharSequence;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 161
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 162
    .local v9, userPreference:I
    int-to-long v11, v9

    cmp-long v11, v11, v3

    if-gtz v11, :cond_5

    .line 163
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 170
    .end local v9           #userPreference:I
    :cond_5
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {p1, v11}, Landroid/preference/ListPreference;->setEnabled(Z)V

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private updateAnimationsSummary(Ljava/lang/Object;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 230
    .local v1, summaries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 231
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 234
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 235
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 239
    :cond_0
    return-void

    .line 231
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateState(Z)V
    .locals 12
    .parameter "force"

    .prologue
    const/high16 v8, 0x3f00

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, "power_saving_mode"

    .line 188
    const/4 v1, 0x0

    .line 190
    .local v1, animations:I
    :try_start_0
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v6}, Landroid/view/IWindowManager;->getAnimationScales()[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :goto_0
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    if-eqz v6, :cond_1

    .line 194
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v6, v6

    if-lt v6, v10, :cond_0

    .line 195
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v6, v6, v9

    add-float/2addr v6, v8

    float-to-int v6, v6

    rem-int/lit8 v1, v6, 0xa

    .line 197
    :cond_0
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v6, v6

    const/4 v7, 0x2

    if-lt v6, v7, :cond_1

    .line 198
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    aget v6, v6, v10

    add-float/2addr v6, v8

    float-to-int v6, v6

    and-int/lit8 v6, v6, 0x7

    mul-int/lit8 v6, v6, 0xa

    add-int/2addr v1, v6

    .line 201
    :cond_1
    const/4 v4, 0x0

    .line 202
    .local v4, idx:I
    const/4 v2, 0x0

    .line 203
    .local v2, best:I
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 204
    .local v0, aents:[Ljava/lang/CharSequence;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 205
    aget-object v6, v0, v3

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 206
    .local v5, val:I
    if-gt v5, v1, :cond_2

    if-le v5, v2, :cond_2

    .line 207
    move v2, v5

    .line 208
    move v4, v3

    .line 204
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 211
    .end local v5           #val:I
    :cond_3
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v6, v4}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 212
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V

    .line 213
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accelerometer_rotation"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    move v7, v10

    :goto_2
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 218
    const-string v6, "power_saving_mode"

    invoke-virtual {p0, v11}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/CheckBoxPreference;

    iput-object v6, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 219
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "power_saving_mode"

    invoke-static {v7, v11, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    move v7, v10

    :goto_3
    invoke-virtual {v6, v7}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 222
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mLockScreen:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/android/settings/DisplaySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getLockConfig()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 223
    iget-object v6, p0, Lcom/android/settings/DisplaySettings;->mLockScreen:Landroid/preference/ListPreference;

    invoke-virtual {v6}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/DisplaySettings;->updateUnlockScreenSummary(Ljava/lang/Object;)V

    .line 226
    return-void

    :cond_4
    move v7, v9

    .line 213
    goto :goto_2

    :cond_5
    move v7, v9

    .line 219
    goto :goto_3

    .line 191
    .end local v0           #aents:[Ljava/lang/CharSequence;
    .end local v2           #best:I
    .end local v3           #i:I
    .end local v4           #idx:I
    :catch_0
    move-exception v6

    goto/16 :goto_0
.end method

.method private updateUnlockScreenSummary(Ljava/lang/Object;)V
    .locals 6
    .parameter "value"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050035

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    .line 244
    .local v1, summaries:[Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mLockScreen:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 245
    .local v2, values:[Ljava/lang/CharSequence;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v2

    if-ge v0, v3, :cond_0

    .line 246
    const-string v3, "foo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Comparing entry "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to current "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mLockScreen:Landroid/preference/ListPreference;

    invoke-virtual {v5}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    aget-object v3, v2, v0

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 248
    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mLockScreen:Landroid/preference/ListPreference;

    aget-object v4, v1, v0

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 252
    :cond_0
    return-void

    .line 245
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    const-string v7, "tvout_settings"

    const-string v6, "power_saving_mode"

    const-string v5, "g_sensor"

    .line 92
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 94
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v2, "window"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    .line 96
    const v2, 0x7f040013

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "tvout_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 102
    const-string v2, "animations"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    .line 103
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAnimations:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 104
    const-string v2, "accelerometer"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    .line 105
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v4}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 107
    const-string v2, "screen_timeout"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/ListPreference;

    .line 109
    .local v1, screenTimeoutPreference:Landroid/preference/ListPreference;
    const-string v2, "screen_off_timeout"

    const/16 v3, 0x7530

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 112
    invoke-direct {p0, v1}, Lcom/android/settings/DisplaySettings;->disableUnusableTimeouts(Landroid/preference/ListPreference;)V

    .line 116
    const-string v2, "power_saving_mode"

    invoke-virtual {p0, v6}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    .line 117
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    const-string v3, "power_saving_mode"

    invoke-static {v0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 119
    const-string v2, "tvout_settings"

    invoke-virtual {p0, v7}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mTvOutSettigs:Landroid/preference/Preference;

    .line 120
    new-instance v2, Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-direct {v2, p0}, Lcom/android/settings/DisplaySettings$OrientationObserver;-><init>(Lcom/android/settings/DisplaySettings;)V

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    .line 121
    iput-object v0, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 124
    const-string v2, "g_sensor"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const-string v3, "g_sensor"

    invoke-virtual {p0, v5}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 131
    new-instance v2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v2, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 132
    const-string v2, "lock_screen"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mLockScreen:Landroid/preference/ListPreference;

    .line 133
    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mLockScreen:Landroid/preference/ListPreference;

    invoke-virtual {v2, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 135
    const-string v2, "wallpapers"

    invoke-virtual {p0, v2}, Lcom/android/settings/DisplaySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceScreen;

    iput-object v2, p0, Lcom/android/settings/DisplaySettings;->mWallpapers:Landroid/preference/PreferenceScreen;

    .line 136
    return-void

    :cond_0
    move v3, v4

    .line 117
    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 9
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v7, 0x1

    const-string v8, "DisplaySettings"

    .line 280
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 281
    .local v2, key:Ljava/lang/String;
    const-string v4, "animations"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 283
    :try_start_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 284
    .local v3, value:I
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v4, v4

    if-lt v4, v7, :cond_0

    .line 285
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v5, 0x0

    rem-int/lit8 v6, v3, 0xa

    int-to-float v6, v6

    aput v6, v4, v5

    .line 287
    :cond_0
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    array-length v4, v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    .line 288
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    const/4 v5, 0x1

    div-int/lit8 v6, v3, 0xa

    rem-int/lit8 v6, v6, 0xa

    int-to-float v6, v6

    aput v6, v4, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mWindowManager:Landroid/view/IWindowManager;

    iget-object v5, p0, Lcom/android/settings/DisplaySettings;->mAnimationScales:[F

    invoke-interface {v4, v5}, Landroid/view/IWindowManager;->setAnimationScales([F)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 294
    :goto_0
    :try_start_2
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->updateAnimationsSummary(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    .line 302
    .end local v3           #value:I
    :cond_2
    :goto_1
    const-string v4, "lock_screen"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 303
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 305
    .restart local v3       #value:I
    if-nez v3, :cond_6

    .line 306
    :try_start_3
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockConfig(I)V

    .line 311
    :cond_3
    :goto_2
    invoke-direct {p0, p2}, Lcom/android/settings/DisplaySettings;->updateUnlockScreenSummary(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1

    .line 317
    .end local v3           #value:I
    :cond_4
    :goto_3
    const-string v4, "screen_timeout"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 318
    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 320
    .restart local v3       #value:I
    :try_start_4
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "screen_off_timeout"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2

    .line 327
    .end local v3           #value:I
    :cond_5
    :goto_4
    return v7

    .line 295
    .restart local p2
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 296
    .local v1, e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v4, "could not persist animation setting"

    invoke-static {v8, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 307
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #value:I
    :cond_6
    if-ne v3, v7, :cond_3

    .line 308
    :try_start_5
    iget-object v4, p0, Lcom/android/settings/DisplaySettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->setLockConfig(I)V
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 312
    :catch_1
    move-exception v4

    move-object v1, v4

    .line 313
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v4, "could not persist screen unlock setting"

    invoke-static {v8, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 322
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .end local p2
    :catch_2
    move-exception v4

    move-object v1, v4

    .line 323
    .restart local v1       #e:Ljava/lang/NumberFormatException;
    const-string v4, "DisplaySettings"

    const-string v4, "could not persist screen timeout setting"

    invoke-static {v8, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 292
    .end local v1           #e:Ljava/lang/NumberFormatException;
    .restart local p2
    :catch_3
    move-exception v4

    goto :goto_0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_2

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accelerometer_rotation"

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mAccelerometer:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v4

    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    :goto_1
    move v0, v4

    .line 276
    :goto_2
    return v0

    :cond_1
    move v2, v3

    .line 256
    goto :goto_0

    .line 261
    :cond_2
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    if-ne p2, v0, :cond_4

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/DisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "power_saving_mode"

    iget-object v2, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mPowerSavingMode:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    invoke-static {v0}, Lcom/sec/android/hardware/SecHardwareInterface;->setAmoledACL(Z)V

    goto :goto_1

    :cond_3
    move v2, v3

    .line 262
    goto :goto_3

    .line 265
    :cond_4
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mTvOutSettigs:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    move v0, v3

    .line 266
    goto :goto_2

    .line 269
    :cond_5
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->gSensor:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_6

    move v0, v3

    .line 270
    goto :goto_2

    .line 273
    :cond_6
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mWallpapers:Landroid/preference/PreferenceScreen;

    if-ne p2, v0, :cond_0

    move v0, v3

    .line 274
    goto :goto_2
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 175
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 177
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "accelerometer_rotation"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 178
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/DisplaySettings;->updateState(Z)V

    .line 179
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 183
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onStop()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/DisplaySettings;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/DisplaySettings;->mOrientationObserver:Lcom/android/settings/DisplaySettings$OrientationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 185
    return-void
.end method
