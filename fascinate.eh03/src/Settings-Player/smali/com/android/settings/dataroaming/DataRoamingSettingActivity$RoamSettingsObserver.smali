.class Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DataRoamingSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dataroaming/DataRoamingSettingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/dataroaming/DataRoamingSettingActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 182
    iput-object p1, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    .line 183
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 184
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 189
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    invoke-virtual {v1}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 191
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "DataRoamingSettingActivity"

    const-string v2, "onChange(): RoamSettingsObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingSettingActivity$RoamSettingsObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingSettingActivity;

    invoke-virtual {v1}, Lcom/android/settings/dataroaming/DataRoamingSettingActivity;->finish()V

    .line 193
    return-void
.end method
