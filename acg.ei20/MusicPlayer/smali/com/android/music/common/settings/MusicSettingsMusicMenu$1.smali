.class Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettingsMusicMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsMusicMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsMusicMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, action:Ljava/lang/String;
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mMediaReceiver:onReceive() is called,"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-virtual {v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->finish()V

    .line 96
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MEDIA_MOUNTED"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    :cond_2
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsMusicMenu$1;->this$0:Lcom/android/music/common/settings/MusicSettingsMusicMenu;

    invoke-virtual {v1}, Lcom/android/music/common/settings/MusicSettingsMusicMenu;->finish()V

    goto :goto_0
.end method