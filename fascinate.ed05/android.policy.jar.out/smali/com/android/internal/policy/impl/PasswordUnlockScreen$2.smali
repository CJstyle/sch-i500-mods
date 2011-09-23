.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;
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
    .line 179
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const/4 v9, 0x0

    .line 180
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/widget/EditText;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, entry:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v2

    .line 182
    .local v2, isConfirmed:Z
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/android/internal/widget/LockPatternUtils;->checkPassword(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 184
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$000(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v4

    .line 185
    .local v4, mDPM:Landroid/app/admin/DevicePolicyManager;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v6

    .line 186
    .local v6, minLength:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iget v7, v7, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->quality:I

    invoke-virtual {v4, v7}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v5

    .line 188
    .local v5, maxLength:I
    new-instance v3, Landroid/content/Intent;

    const-string v7, "android.app.action.CHANGE_DEVICE_PASSWORD"

    invoke-direct {v3, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 189
    .local v3, it:Landroid/content/Intent;
    const-string v7, "lockscreen.password_type"

    const/high16 v8, 0x5

    invoke-virtual {v3, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v7, "lockscreen.password_min"

    invoke-virtual {v3, v7, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 191
    const-string v7, "lockscreen.password_max"

    invoke-virtual {v3, v7, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 192
    const-string v7, "confirm_credentials"

    invoke-virtual {v3, v7, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 193
    const/high16 v7, 0x1000

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    const/high16 v7, 0x40

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-virtual {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 196
    invoke-static {v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$402(Z)Z

    .line 197
    invoke-static {v9}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$502(Z)Z

    .line 198
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v7, v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 199
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->reportSuccessfulUnlockAttempt()V

    .line 213
    .end local v3           #it:Landroid/content/Intent;
    .end local v4           #mDPM:Landroid/app/admin/DevicePolicyManager;
    .end local v5           #maxLength:I
    .end local v6           #minLength:I
    :goto_0
    return-void

    .line 204
    :cond_0
    const/4 v7, 0x0

    :try_start_0
    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$402(Z)Z

    .line 205
    const/4 v7, 0x0

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$502(Z)Z

    .line 206
    iget-object v7, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$2;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-static {v7}, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/os/RecoverySystem;->rebootWipeUserData(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 207
    :catch_0
    move-exception v7

    move-object v0, v7

    .line 209
    .local v0, e:Ljava/lang/Exception;
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v8, "exception in wiping data"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method
