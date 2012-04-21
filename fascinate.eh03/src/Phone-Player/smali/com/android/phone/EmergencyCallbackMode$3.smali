.class Lcom/android/phone/EmergencyCallbackMode$3;
.super Landroid/content/BroadcastReceiver;
.source "EmergencyCallbackMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EmergencyCallbackMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyCallbackMode;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackMode;)V
    .locals 0
    .parameter

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 260
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 261
    .local v0, action:Ljava/lang/String;
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 262
    const-string v1, "phoneinECMState"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    #getter for: Lcom/android/phone/EmergencyCallbackMode;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/phone/EmergencyCallbackMode;->access$400(Lcom/android/phone/EmergencyCallbackMode;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/phone/EmergencyCallbackMode$3$1;

    invoke-direct {v2, p0}, Lcom/android/phone/EmergencyCallbackMode$3$1;-><init>(Lcom/android/phone/EmergencyCallbackMode$3;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    :cond_0
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 291
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->notifyECBM()V

    .line 294
    :cond_1
    return-void
.end method
