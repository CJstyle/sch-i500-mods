.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;
.super Ljava/lang/Object;
.source "StatusBarPolicy.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/StatusBarPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)V
    .locals 0
    .parameter

    .prologue
    .line 1382
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const/4 v2, 0x0

    .line 1384
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2202(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1385
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2302(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1387
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$3;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2100(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1388
    .local v0, notificationManager:Landroid/app/NotificationManager;
    invoke-static {}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400()Landroid/app/Notification;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1389
    invoke-static {}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2400()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->icon:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1393
    :goto_0
    return-void

    .line 1391
    :cond_0
    const-string v1, "StatusBarPolicy"

    const-string v2, "have not registered notification."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
