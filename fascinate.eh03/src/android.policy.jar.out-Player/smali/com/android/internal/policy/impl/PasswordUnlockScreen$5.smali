.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;
.super Landroid/content/BroadcastReceiver;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 632
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 635
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.app.action.ACTION_RECOVERY_PASSWORD_REQUESTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 638
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Inside broadcast receiver in PasswordUnlockScreen"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 639
    iget-object v0, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$5;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->changeDevicePasswordAndUnlock()V

    .line 641
    :cond_0
    return-void
.end method
