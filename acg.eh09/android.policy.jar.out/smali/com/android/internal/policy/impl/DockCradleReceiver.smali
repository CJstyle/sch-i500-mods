.class public Lcom/android/internal/policy/impl/DockCradleReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DockCradleReceiver.java"


# static fields
.field private static mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static init(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 0
    .parameter "pwm"

    .prologue
    .line 40
    sput-object p0, Lcom/android/internal/policy/impl/DockCradleReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 41
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "data"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v7, "DockCradleReceiver"

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, action:Ljava/lang/String;
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    const-string v2, "android.intent.extra.DOCK_STATE"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 51
    .local v1, dockState:I
    const-string v2, "DockCradleReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dock State: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    if-nez v1, :cond_1

    .line 56
    sget-object v2, Lcom/android/internal/policy/impl/DockCradleReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    sput v4, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsDockConnected:I

    .line 70
    .end local v1           #dockState:I
    :cond_0
    :goto_0
    return-void

    .line 57
    .restart local v1       #dockState:I
    :cond_1
    if-ne v1, v5, :cond_2

    .line 59
    sget-object v2, Lcom/android/internal/policy/impl/DockCradleReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    sput v5, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsDockConnected:I

    goto :goto_0

    .line 61
    :cond_2
    if-ne v1, v6, :cond_3

    .line 63
    sget-object v2, Lcom/android/internal/policy/impl/DockCradleReceiver;->mPhoneWindowManager:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PhoneWindowManager;->mKeyguardMediator:Lcom/android/internal/policy/impl/KeyguardViewMediator;

    sput v6, Lcom/android/internal/policy/impl/KeyguardViewMediator;->mIsDockConnected:I

    goto :goto_0

    .line 66
    :cond_3
    const-string v2, "DockCradleReceiver"

    const-string v2, "Unknown Desk Dock State"

    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
