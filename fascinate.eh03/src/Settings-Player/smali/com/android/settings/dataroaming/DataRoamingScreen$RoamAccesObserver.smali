.class Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;
.super Landroid/database/ContentObserver;
.source "DataRoamingScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dataroaming/DataRoamingScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamAccesObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dataroaming/DataRoamingScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/dataroaming/DataRoamingScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingScreen;

    .line 120
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 121
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .parameter "selfChange"

    .prologue
    .line 125
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 126
    iget-object v2, p0, Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingScreen;

    invoke-virtual {v2}, Lcom/android/settings/dataroaming/DataRoamingScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "data_roam_access_settings"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 128
    .local v1, mode:I
    iget-object v2, p0, Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingScreen;

    #getter for: Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/dataroaming/DataRoamingScreen;->access$000(Lcom/android/settings/dataroaming/DataRoamingScreen;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 129
    iget-object v2, p0, Lcom/android/settings/dataroaming/DataRoamingScreen$RoamAccesObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingScreen;

    #getter for: Lcom/android/settings/dataroaming/DataRoamingScreen;->mButtonDrSettings:Landroid/preference/ListPreference;
    invoke-static {v2}, Lcom/android/settings/dataroaming/DataRoamingScreen;->access$000(Lcom/android/settings/dataroaming/DataRoamingScreen;)Landroid/preference/ListPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 130
    .local v0, dialog:Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 131
    :cond_0
    return-void
.end method
