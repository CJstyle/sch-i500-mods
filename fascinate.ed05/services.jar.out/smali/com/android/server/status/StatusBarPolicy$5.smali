.class Lcom/android/server/status/StatusBarPolicy$5;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/status/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1454
    iput-object p1, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 8
    .parameter "dialog"

    .prologue
    const/4 v5, 0x0

    .line 1455
    const-string v3, "StatusBarPolicy"

    const-string v4, "mDisChargeListener"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3, v5}, Lcom/android/server/status/StatusBarPolicy;->access$2602(Lcom/android/server/status/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1458
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3, v5}, Lcom/android/server/status/StatusBarPolicy;->access$2702(Lcom/android/server/status/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1460
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$2800(Lcom/android/server/status/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1469
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$2900(Lcom/android/server/status/StatusBarPolicy;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1471
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$3000(Lcom/android/server/status/StatusBarPolicy;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1473
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$2800(Lcom/android/server/status/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1474
    .local v0, m:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$2800(Lcom/android/server/status/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x4e20

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1483
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    const-wide/32 v5, 0xea60

    add-long v1, v3, v5

    .line 1484
    .local v1, when:J
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    iget-object v4, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v4}, Lcom/android/server/status/StatusBarPolicy;->access$2200(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v6}, Lcom/android/server/status/StatusBarPolicy;->access$3200(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Intent;

    move-result-object v6

    const/high16 v7, 0x1000

    invoke-static {v4, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/status/StatusBarPolicy;->access$3102(Lcom/android/server/status/StatusBarPolicy;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;

    .line 1485
    iget-object v3, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v3}, Lcom/android/server/status/StatusBarPolicy;->access$2200(Lcom/android/server/status/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "alarm"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/AlarmManager;

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/android/server/status/StatusBarPolicy$5;->this$0:Lcom/android/server/status/StatusBarPolicy;

    invoke-static {v5}, Lcom/android/server/status/StatusBarPolicy;->access$3100(Lcom/android/server/status/StatusBarPolicy;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v3, v4, v1, v2, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1487
    return-void
.end method
