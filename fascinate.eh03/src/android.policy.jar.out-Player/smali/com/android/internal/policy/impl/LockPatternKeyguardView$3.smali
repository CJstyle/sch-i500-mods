.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardWindowController;)V
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
    .line 360
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doesFallbackUnlockScreenExist()Z
    .locals 1

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public forgotPattern(Z)V
    .locals 2
    .parameter "isForgotten"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 411
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    .line 413
    :cond_0
    return-void
.end method

.method public goToLockScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 363
    const-string v0, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]goToLockScreen: Entry"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 365
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$502(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 369
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 373
    :goto_0
    return-void

    .line 371
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_0
.end method

.method public goToUnlockScreen()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "LockPatternKeyguardView"

    .line 376
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]goToUnlockScreen: Entry"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    .line 379
    .local v0, simState:Lcom/android/internal/telephony/IccCard$State;
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    :goto_0
    return-void

    .line 393
    :cond_0
    invoke-static {v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$902(Z)Z

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 395
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1, v4}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 396
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 397
    const-string v1, "LockPatternKeyguardView"

    const-string v1, "[MaxInactivityTime]goToUnlockScreen: isFirstTimeOff=true lockScreenShown=false"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1402(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)I

    .line 401
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v1

    invoke-interface {v1, v4}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    goto :goto_0

    .line 404
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_0
.end method

.method public isSecure()Z
    .locals 1

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v0

    return v0
.end method

.method public keyguardDone(Z)V
    .locals 1
    .parameter "authenticated"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->keyguardDone(Z)V

    .line 478
    return-void
.end method

.method public keyguardDoneDrawing()V
    .locals 0

    .prologue
    .line 482
    return-void
.end method

.method public pokeWakeDimlock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakeDimlock(I)V

    .line 493
    return-void
.end method

.method public pokeWakelock()V
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 470
    return-void
.end method

.method public pokeWakelock(I)V
    .locals 1
    .parameter "millis"

    .prologue
    .line 473
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock(I)V

    .line 474
    return-void
.end method

.method public recreateMe(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 424
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1702(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    .line 425
    sget-boolean v0, Lcom/android/internal/policy/impl/RecoveryPasswordScreen;->recoveryScreen:Z

    if-nez v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 427
    :cond_0
    return-void
.end method

.method public reportDeviceWipe(I)V
    .locals 1
    .parameter "call"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0, p1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;I)V

    .line 486
    return-void
.end method

.method public reportFailedPatternAttempt()V
    .locals 3

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 498
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v0

    .line 502
    .local v0, failedAttempts:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    .line 505
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 506
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 508
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 509
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_0

    .line 510
    :cond_2
    rem-int/lit8 v1, v0, 0x5

    if-nez v1, :cond_0

    .line 512
    iget-object v1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_0
.end method

.method public reportFailedUnlockAttempt()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 517
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportFailedAttempt()V

    .line 518
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getFailedAttempts()I

    move-result v0

    .line 523
    .local v0, failedAttempts:I
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality()I

    move-result v2

    const/high16 v3, 0x1

    if-ne v2, v3, :cond_1

    move v1, v4

    .line 525
    .local v1, usingLockPattern:Z
    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0xf

    if-ne v0, v2, :cond_2

    .line 528
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2300(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 538
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt()V

    .line 539
    return-void

    .line 523
    .end local v1           #usingLockPattern:Z
    :cond_1
    const/4 v2, 0x0

    move v1, v2

    goto :goto_0

    .line 529
    .restart local v1       #usingLockPattern:Z
    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x14

    if-lt v0, v2, :cond_3

    .line 531
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/internal/widget/LockPatternUtils;->setPermanentlyLocked(Z)V

    .line 532
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v3, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;)V

    goto :goto_1

    .line 533
    :cond_3
    rem-int/lit8 v2, v0, 0x5

    if-nez v2, :cond_0

    .line 535
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->getPasswordRecoverable(Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 536
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    goto :goto_1
.end method

.method public reportSuccessfulUnlockAttempt()V
    .locals 2

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1102(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1202(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 548
    iget-object v0, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v0}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt()V

    .line 549
    return-void
.end method

.method public takeEmergencyCallAction()V
    .locals 10

    .prologue
    .line 434
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v9}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$1900(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/content/Context;

    const-string v9, "activity"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 435
    .local v0, activityManager:Landroid/app/ActivityManager;
    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    .line 437
    .local v4, info:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v4, :cond_0

    .line 439
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 440
    .local v3, i:Ljava/util/Iterator;
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 441
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 442
    .local v7, runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    iget-object v8, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, pkgName:Ljava/lang/String;
    const-string v8, "com.android.phone"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 445
    :try_start_0
    iget-object v1, v7, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 446
    .local v1, component:Landroid/content/ComponentName;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9, v1}, Landroid/app/IActivityManager;->finishOtherInstances(Landroid/os/IBinder;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 456
    .end local v1           #component:Landroid/content/ComponentName;
    .end local v3           #i:Ljava/util/Iterator;
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v7           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_0
    :goto_0
    const/16 v8, 0x2710

    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->pokeWakelock(I)V

    .line 457
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_1

    .line 459
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-static {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$2100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->resumeCall()Z

    .line 466
    :goto_1
    return-void

    .line 447
    .restart local v3       #i:Ljava/util/Iterator;
    .restart local v6       #pkgName:Ljava/lang/String;
    .restart local v7       #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :catch_0
    move-exception v8

    move-object v2, v8

    .line 449
    .local v2, e:Landroid/os/RemoteException;
    const-string v8, "Exception"

    const-string v9, "Added to remove KlocWork() defect"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 461
    .end local v2           #e:Landroid/os/RemoteException;
    .end local v3           #i:Ljava/util/Iterator;
    .end local v6           #pkgName:Ljava/lang/String;
    .end local v7           #runningTaskInfo:Landroid/app/ActivityManager$RunningTaskInfo;
    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v8, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v5, intent:Landroid/content/Intent;
    const/high16 v8, 0x1080

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 464
    iget-object v8, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$3;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-virtual {v8}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method
