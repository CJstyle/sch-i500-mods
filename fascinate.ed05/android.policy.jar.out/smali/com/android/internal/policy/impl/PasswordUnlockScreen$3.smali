.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;
.super Ljava/lang/Object;
.source "PasswordUnlockScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
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
    .line 217
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 219
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$402(Z)Z

    .line 220
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$502(Z)Z

    .line 221
    iget-object v1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$3;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 224
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "exception in wiping data"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
