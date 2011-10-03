.class public Lcom/broadcom/bt/app/settings/DunCfgActivity;
.super Landroid/preference/PreferenceActivity;
.source "DunCfgActivity.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ServiceCfgActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    const v0, 0x7f04000a

    invoke-virtual {p0, v0}, Lcom/broadcom/bt/app/settings/DunCfgActivity;->addPreferencesFromResource(I)V

    .line 35
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1
    .parameter "pref"
    .parameter "val"

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 39
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 40
    return-void
.end method
