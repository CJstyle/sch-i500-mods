.class public Lcom/android/settings/dataroaming/DataRoamingScreen;
.super Landroid/preference/PreferenceActivity;
.source "DataRoamingScreen.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;
    }
.end annotation


# instance fields
.field private final BUTTON_DATA_ROAM_KEY:Ljava/lang/String;

.field private mButtonDrSettings:Landroid/preference/ListPreference;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mRoamAccesObserver:Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 31
    const-string v0, "button_data_roaming"

    iput-object v0, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->BUTTON_DATA_ROAM_KEY:Ljava/lang/String;

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/dataroaming/DataRoamingScreen;)Landroid/preference/ListPreference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    const v5, 0x7f04000b

    invoke-virtual {p0, v5}, Lcom/android/settings/dataroaming/DataRoamingScreen;->addPreferencesFromResource(I)V

    .line 43
    const-string v5, "button_data_roaming"

    invoke-virtual {p0, v5}, Lcom/android/settings/dataroaming/DataRoamingScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    .line 44
    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    invoke-virtual {v5, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f050037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v4

    .line 47
    .local v4, set:[Ljava/lang/CharSequence;
    array-length v5, v4

    div-int/lit8 v3, v5, 0x2

    .line 48
    .local v3, len:I
    new-array v0, v3, [Ljava/lang/CharSequence;

    .line 49
    .local v0, entries:[Ljava/lang/CharSequence;
    new-array v1, v3, [Ljava/lang/CharSequence;

    .line 50
    .local v1, entryValues:[Ljava/lang/CharSequence;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 51
    mul-int/lit8 v5, v2, 0x2

    aget-object v5, v4, v5

    aput-object v5, v0, v2

    .line 52
    mul-int/lit8 v5, v2, 0x2

    add-int/lit8 v5, v5, 0x1

    aget-object v5, v4, v5

    aput-object v5, v1, v2

    .line 50
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    invoke-virtual {v5, v0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 55
    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    invoke-virtual {v5, v1}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mContentResolver:Landroid/content/ContentResolver;

    .line 57
    new-instance v5, Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;

    invoke-direct {v5, p0}, Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;-><init>(Lcom/android/settings/dataroaming/DataRoamingScreen;)V

    iput-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mRoamAccesObserver:Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;

    .line 58
    iget-object v5, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "data_roam_access_settings"

    invoke-static {v6}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mRoamAccesObserver:Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 60
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 76
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 77
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 79
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "preference"
    .parameter "objValue"

    .prologue
    const/4 v4, 0x0

    const-string v5, "DATAROAMING"

    .line 102
    iget-object v2, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    if-ne p1, v2, :cond_1

    .line 103
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    iget-object v3, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 104
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 105
    .local v1, val:I
    const-string v2, "DATAROAMING"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " SCREEN  onPreferenceChange = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "val == DATA_ROAM_ACCESS_DENY"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roam_access_notify"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    const-string v2, "DATAROAMING"

    const-string v2, " SCREEN  onPreferenceChange sets DATA_ROAM_NOTIFY_OFF"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roam_access_settings"

    check-cast p2, Ljava/lang/String;

    .end local p2
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 112
    const/4 v2, 0x1

    .line 115
    .end local v1           #val:I
    :goto_0
    return v2

    .restart local p2
    :cond_1
    move v2, v4

    goto :goto_0
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 64
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/dataroaming/DataRoamingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "data_roam_access_settings"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 68
    .local v0, mode:I
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 83
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 85
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mRoamAccesObserver:Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 87
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 88
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 90
    :cond_0
    return-void
.end method
