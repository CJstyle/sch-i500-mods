.class Lcom/android/server/status/StatusBarService$28;
.super Landroid/content/BroadcastReceiver;
.source "StatusBarService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarService;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarService;)V
    .locals 0
    .parameter

    .prologue
    .line 3130
    iput-object p1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x0

    .line 3131
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3132
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3134
    :cond_0
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService;->deactivate()V

    .line 3186
    :cond_1
    :goto_0
    return-void

    .line 3136
    :cond_2
    const-string v1, "android.provider.Telephony.SPN_STRINGS_UPDATED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3137
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    const-string v2, "showSpn"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "spn"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "showPlmn"

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string v5, "plmn"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/server/status/StatusBarService;->updateNetworkName(ZLjava/lang/String;ZLjava/lang/String;)V

    goto :goto_0

    .line 3142
    :cond_3
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3143
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-virtual {v1}, Lcom/android/server/status/StatusBarService;->updateResources()V

    goto :goto_0

    .line 3146
    :cond_4
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 3152
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, p2}, Lcom/android/server/status/StatusBarService;->access$1100(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto :goto_0

    .line 3154
    :cond_5
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.bluetooth.headset.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.bluetooth.a2dp.action.SINK_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 3159
    :cond_6
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, p2}, Lcom/android/server/status/StatusBarService;->access$1200(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto :goto_0

    .line 3163
    :cond_7
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 3164
    const-string v1, "StatusBar"

    const-string v2, "mReceiver: ACTION_HEADSET_PLUG"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3165
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, p2}, Lcom/android/server/status/StatusBarService;->access$1300(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto :goto_0

    .line 3169
    :cond_8
    const-string v1, "com.android.music.musicservicecommand.mediainfo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3170
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, p2}, Lcom/android/server/status/StatusBarService;->access$1400(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 3174
    :cond_9
    const-string v1, "com.android.fm.player.status.on"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 3175
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/status/StatusBarService;->access$1500(Lcom/android/server/status/StatusBarService;Z)V

    goto/16 :goto_0

    .line 3177
    :cond_a
    const-string v1, "com.android.fm.player.status.off"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 3178
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, v5}, Lcom/android/server/status/StatusBarService;->access$1500(Lcom/android/server/status/StatusBarService;Z)V

    goto/16 :goto_0

    .line 3182
    :cond_b
    const-string v1, "com.android.notification.voicerecordcommand"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3183
    iget-object v1, p0, Lcom/android/server/status/StatusBarService$28;->this$0:Lcom/android/server/status/StatusBarService;

    invoke-static {v1, p2}, Lcom/android/server/status/StatusBarService;->access$1600(Lcom/android/server/status/StatusBarService;Landroid/content/Intent;)V

    goto/16 :goto_0
.end method
