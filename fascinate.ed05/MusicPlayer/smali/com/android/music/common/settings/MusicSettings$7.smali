.class Lcom/android/music/common/settings/MusicSettings$7;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettings;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 328
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettings$7;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 329
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 337
    .local v0, action:Ljava/lang/String;
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 338
    sget-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-nez v1, :cond_1

    .line 340
    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$500()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$500()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    .line 341
    :cond_0
    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mStateReceiver(): Headset unplugged, effect is changed to Normal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$502(I)I

    .line 343
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$7;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$600(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/TextView;

    move-result-object v1

    sget-object v2, Lcom/android/music/common/settings/MusicSettingsEffect;->mEffectString:[I

    invoke-static {}, Lcom/android/music/common/settings/MusicSettings;->access$500()I

    move-result v3

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 344
    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettings$7;->this$0:Lcom/android/music/common/settings/MusicSettings;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettings;->access$600(Lcom/android/music/common/settings/MusicSettings;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->invalidate()V

    .line 349
    :cond_1
    return-void
.end method