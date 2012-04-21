.class public Lcom/android/phone/CdmaOptions;
.super Landroid/preference/PreferenceActivity;
.source "CdmaOptions.java"


# instance fields
.field private mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "icicle"

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    const v1, 0x7f050004

    invoke-virtual {p0, v1}, Lcom/android/phone/CdmaOptions;->addPreferencesFromResource(I)V

    .line 42
    invoke-virtual {p0}, Lcom/android/phone/CdmaOptions;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 43
    .local v0, prefSet:Landroid/preference/PreferenceScreen;
    const-string v1, "cdma_roaming_mode_key"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/phone/CdmaRoamingListPreference;

    iput-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    .line 45
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/phone/CdmaOptions;->mButtonCdmaRoam:Lcom/android/phone/CdmaRoamingListPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/CdmaRoamingListPreference;->setEnabled(Z)V

    .line 48
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 52
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cdma_roaming_mode_key"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const/4 v0, 0x1

    .line 55
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
