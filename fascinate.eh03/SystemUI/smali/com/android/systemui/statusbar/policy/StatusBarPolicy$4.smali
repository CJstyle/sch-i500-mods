.class Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;
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
    .line 1393
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4
    .parameter "dialog"

    .prologue
    const/4 v3, 0x0

    .line 1395
    const-string v1, "StatusBarPolicy"

    const-string v2, "mDisChargeListener"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2502(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 1398
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1, v3}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2602(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 1400
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 1402
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2800(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1404
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2900(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1407
    .local v0, m:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/StatusBarPolicy$4;->this$0:Lcom/android/systemui/statusbar/policy/StatusBarPolicy;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/StatusBarPolicy;->access$2700(Lcom/android/systemui/statusbar/policy/StatusBarPolicy;)Landroid/os/Handler;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1410
    .end local v0           #m:Landroid/os/Message;
    :cond_0
    return-void
.end method
