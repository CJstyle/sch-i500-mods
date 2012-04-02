.class Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DataRoamingGuardScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dataroaming/DataRoamingGuardScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoamSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dataroaming/DataRoamingGuardScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/dataroaming/DataRoamingGuardScreen;)V
    .locals 1
    .parameter

    .prologue
    .line 186
    iput-object p1, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingGuardScreen;

    .line 187
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 192
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 193
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingGuardScreen;

    invoke-virtual {v1}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 195
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const-string v1, "DataRoamingGuard"

    const-string v2, "onChange(): RoamSettingsObserver"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/android/settings/dataroaming/DataRoamingGuardScreen$RoamSettingsObserver;->this$0:Lcom/android/settings/dataroaming/DataRoamingGuardScreen;

    invoke-virtual {v1}, Lcom/android/settings/dataroaming/DataRoamingGuardScreen;->finish()V

    .line 197
    return-void
.end method
