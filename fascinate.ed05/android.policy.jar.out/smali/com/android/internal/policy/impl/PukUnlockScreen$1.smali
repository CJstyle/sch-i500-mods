.class Lcom/android/internal/policy/impl/PukUnlockScreen$1;
.super Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;
.source "PukUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PukUnlockScreen;->checkPUK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 372
    iput-object p1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/PukUnlockScreen$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/PukUnlockScreen;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(Z)V
    .locals 6
    .parameter "success"

    .prologue
    const/4 v5, 0x0

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$200(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->hide()V

    .line 374
    if-eqz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$300(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->reportSimPinUnlocked()V

    .line 380
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    .line 390
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$500(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x1040361

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 383
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$700(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x10400c9

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v4}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$600(Lcom/android/internal/policy/impl/PukUnlockScreen;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    sget-object v1, Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;->REQUIRE_PUK:Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$802(Lcom/android/internal/policy/impl/PukUnlockScreen;Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;)Lcom/android/internal/policy/impl/PukUnlockScreen$SimLockState;

    .line 385
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->updateView()V

    .line 386
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$900(Lcom/android/internal/policy/impl/PukUnlockScreen;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 387
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0, v5}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$1002(Lcom/android/internal/policy/impl/PukUnlockScreen;I)I

    .line 388
    iget-object v0, p0, Lcom/android/internal/policy/impl/PukUnlockScreen$1;->this$0:Lcom/android/internal/policy/impl/PukUnlockScreen;

    invoke-static {v0}, Lcom/android/internal/policy/impl/PukUnlockScreen;->access$400(Lcom/android/internal/policy/impl/PukUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    goto :goto_0
.end method
