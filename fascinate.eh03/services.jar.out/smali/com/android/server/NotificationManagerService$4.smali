.class Lcom/android/server/NotificationManagerService$4;
.super Ljava/util/TimerTask;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NotificationManagerService;->play_in_intervals(Landroid/content/Context;Landroid/net/Uri;ILandroid/app/Notification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NotificationManagerService;

.field final synthetic val$mContext_local:Landroid/content/Context;

.field final synthetic val$notification:Landroid/app/Notification;


# direct methods
.method constructor <init>(Lcom/android/server/NotificationManagerService;Landroid/content/Context;Landroid/app/Notification;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1005
    iput-object p1, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/NotificationManagerService$4;->val$mContext_local:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/NotificationManagerService$4;->val$notification:Landroid/app/Notification;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1007
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$300(Lcom/android/server/NotificationManagerService;)Lcom/android/server/NotificationPlayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/NotificationManagerService$4;->val$mContext_local:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/NotificationManagerService$4;->val$notification:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZI)V

    .line 1009
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->val$notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->defaults:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 1010
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$400(Lcom/android/server/NotificationManagerService;)Landroid/os/Vibrator;

    move-result-object v0

    const/16 v1, 0xc

    new-array v1, v1, [J

    fill-array-data v1, :array_0

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate([JI)V

    .line 1013
    :cond_0
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->val$notification:Landroid/app/Notification;

    iget-wide v0, v0, Landroid/app/Notification;->iRepeat_Time:J

    const-wide/32 v2, 0x1d538

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 1014
    iget-object v0, p0, Lcom/android/server/NotificationManagerService$4;->this$0:Lcom/android/server/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/NotificationManagerService;->access$2500(Lcom/android/server/NotificationManagerService;)Ljava/util/Timer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 1015
    :cond_1
    const-string v0, "Notification Manager Service"

    const-string v1, "Am in Alert Service"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1016
    return-void

    .line 1010
    :array_0
    .array-data 0x8
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xd0t 0x7t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xf4t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0xe8t 0x3t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method
