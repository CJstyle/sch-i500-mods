.class Lcom/sec/android/app/carcradle/CarCradleMain$1;
.super Landroid/content/BroadcastReceiver;
.source "CarCradleMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/carcradle/CarCradleMain;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/carcradle/CarCradleMain;


# direct methods
.method constructor <init>(Lcom/sec/android/app/carcradle/CarCradleMain;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const-string v7, "CarCradleMain"

    .line 154
    const-string v3, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 155
    .local v1, dockState:I
    const-string v3, "CarCradleMain"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dock State: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    if-ne v1, v6, :cond_0

    .line 159
    const-string v3, "CarCradleMain"

    const-string v3, "Received Car Dock event"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$000(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 161
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-virtual {v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 163
    .local v0, audioMgr:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isExtraSpeakerDockOn()Z

    move-result v3

    if-nez v3, :cond_1

    .line 164
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$102(Lcom/sec/android/app/carcradle/CarCradleMain;Z)Z

    .line 165
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$000(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f02000e

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 170
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Lcom/sec/android/app/carcradle/CarCradleMain;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 171
    .local v2, tm:Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    if-eqz v3, :cond_0

    .line 172
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$000(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/widget/Button;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 176
    .end local v0           #audioMgr:Landroid/media/AudioManager;
    .end local v2           #tm:Landroid/telephony/TelephonyManager;
    :cond_0
    return-void

    .line 167
    .restart local v0       #audioMgr:Landroid/media/AudioManager;
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v3, v5}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$102(Lcom/sec/android/app/carcradle/CarCradleMain;Z)Z

    .line 168
    iget-object v3, p0, Lcom/sec/android/app/carcradle/CarCradleMain$1;->this$0:Lcom/sec/android/app/carcradle/CarCradleMain;

    invoke-static {v3}, Lcom/sec/android/app/carcradle/CarCradleMain;->access$000(Lcom/sec/android/app/carcradle/CarCradleMain;)Landroid/widget/Button;

    move-result-object v3

    const v4, 0x7f020009

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method
