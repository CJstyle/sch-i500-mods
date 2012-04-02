.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;
.super Landroid/content/BroadcastReceiver;
.source "LockPatternKeyguardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v3, 0x1

    const-string v4, "LockPatternKeyguardView"

    .line 778
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 779
    .local v0, action:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 780
    const-string v1, "android.intent.action.DEVICE_LOCKSCREEN_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 781
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]startTimer: onFinish is called"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 783
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1002(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 784
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]startTimer: isInactivityTimeoutExpired is set to false"

    invoke-static {v4, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$4;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2802(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 788
    :cond_0
    return-void
.end method
