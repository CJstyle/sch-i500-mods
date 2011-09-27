.class Lcom/android/music/common/settings/MusicSettingsEffect$4;
.super Landroid/content/BroadcastReceiver;
.source "MusicSettingsEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/music/common/settings/MusicSettingsEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/music/common/settings/MusicSettingsEffect;


# direct methods
.method constructor <init>(Lcom/android/music/common/settings/MusicSettingsEffect;)V
    .locals 0
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/music/common/settings/MusicSettingsEffect$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 432
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 433
    .local v0, action:Ljava/lang/String;
    const-string v1, "musicPlayer.service.HEADSET_PLUG_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "musicPlayer.service.BLUETOOTH_HEADSET_STATE_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 435
    :cond_0
    sget-boolean v1, Lcom/android/music/common/util/MusicPlayerUtil;->mIsHeadsetPlugged:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/music/common/settings/MusicSettingsEffect$4;->this$0:Lcom/android/music/common/settings/MusicSettingsEffect;

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$100(Lcom/android/music/common/settings/MusicSettingsEffect;)Landroid/media/AudioManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 437
    :cond_1
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 438
    :cond_2
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mStateReceiver(): Headset unplugged or BT headset, effect is changed to Normal"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$202(I)I

    .line 440
    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$400()Lcom/sec/android/touchwiz/widget/TwRadioGroup;

    move-result-object v1

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$300()Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/android/music/common/settings/MusicSettingsEffect;->access$200()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/sec/android/touchwiz/widget/TwRadioButton;

    invoke-virtual {p0}, Lcom/sec/android/touchwiz/widget/TwRadioButton;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/sec/android/touchwiz/widget/TwRadioGroup;->check(I)V

    .line 445
    :cond_3
    return-void
.end method
