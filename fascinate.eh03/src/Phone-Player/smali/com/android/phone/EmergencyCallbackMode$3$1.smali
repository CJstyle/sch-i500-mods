.class Lcom/android/phone/EmergencyCallbackMode$3$1;
.super Ljava/lang/Object;
.source "EmergencyCallbackMode.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyCallbackMode$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/phone/EmergencyCallbackMode$3;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyCallbackMode$3;)V
    .locals 0
    .parameter

    .prologue
    .line 264
    iput-object p1, p0, Lcom/android/phone/EmergencyCallbackMode$3$1;->this$1:Lcom/android/phone/EmergencyCallbackMode$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 266
    const-string v0, "EmergencyCallbackMode"

    const-string v1, "enableNotificationAlerts"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableNotificationAlerts(Z)V

    .line 274
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode$3$1;->this$1:Lcom/android/phone/EmergencyCallbackMode$3;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    #getter for: Lcom/android/phone/EmergencyCallbackMode;->mOtaActivationShouldBeShown:Z
    invoke-static {v0}, Lcom/android/phone/EmergencyCallbackMode;->access$200(Lcom/android/phone/EmergencyCallbackMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode$3$1;->this$1:Lcom/android/phone/EmergencyCallbackMode$3;

    iget-object v1, v1, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    const-class v2, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 278
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 279
    iget-object v1, p0, Lcom/android/phone/EmergencyCallbackMode$3$1;->this$1:Lcom/android/phone/EmergencyCallbackMode$3;

    iget-object v1, v1, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    invoke-virtual {v1, v0}, Lcom/android/phone/EmergencyCallbackMode;->startActivity(Landroid/content/Intent;)V

    .line 281
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode$3$1;->this$1:Lcom/android/phone/EmergencyCallbackMode$3;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    const/4 v1, 0x0

    #setter for: Lcom/android/phone/EmergencyCallbackMode;->mNotifyECBMonPause:Z
    invoke-static {v0, v1}, Lcom/android/phone/EmergencyCallbackMode;->access$302(Lcom/android/phone/EmergencyCallbackMode;Z)Z

    .line 282
    iget-object v0, p0, Lcom/android/phone/EmergencyCallbackMode$3$1;->this$1:Lcom/android/phone/EmergencyCallbackMode$3;

    iget-object v0, v0, Lcom/android/phone/EmergencyCallbackMode$3;->this$0:Lcom/android/phone/EmergencyCallbackMode;

    invoke-virtual {v0}, Lcom/android/phone/EmergencyCallbackMode;->finish()V

    .line 283
    return-void
.end method
