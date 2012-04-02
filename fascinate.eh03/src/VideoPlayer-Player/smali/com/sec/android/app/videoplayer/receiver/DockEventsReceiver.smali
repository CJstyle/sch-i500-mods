.class public Lcom/sec/android/app/videoplayer/receiver/DockEventsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockEventsReceiver.java"


# instance fields
.field mPrefs:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "cradle_dock_connected"

    const-string v6, "DockEventsReceiver"

    .line 14
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/app/videoplayer/receiver/DockEventsReceiver;->mPrefs:Landroid/content/SharedPreferences;

    .line 15
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 16
    .local v0, dockState:I
    const-string v2, "DockEventsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    if-nez v0, :cond_0

    .line 20
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/receiver/DockEventsReceiver;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 21
    .local v1, ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cradle_dock_connected"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 22
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 32
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    :goto_0
    return-void

    .line 24
    :cond_0
    if-eq v0, v5, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 26
    :cond_1
    iget-object v2, p0, Lcom/sec/android/app/videoplayer/receiver/DockEventsReceiver;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 27
    .restart local v1       #ed:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cradle_dock_connected"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 28
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 30
    .end local v1           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "DockEventsReceiver"

    const-string v2, "Unknown Dock State"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
