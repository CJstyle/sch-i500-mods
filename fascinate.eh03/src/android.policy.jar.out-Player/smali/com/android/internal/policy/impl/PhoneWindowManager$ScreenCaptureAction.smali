.class Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScreenCaptureAction"
.end annotation


# static fields
.field public static final DEBUG:Z = true

.field public static final TAG:Ljava/lang/String; = "ScreenCaptureAction"


# instance fields
.field private final ACTION:Ljava/lang/String;

.field private mBackKeyPressed:Z

.field private mIntent:Landroid/content/Intent;

.field private mIsSentIntent:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .parameter

    .prologue
    const-string v2, "com.sec.android.app.screencapture.capture"

    .line 3471
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3466
    const-string v0, "com.sec.android.app.screencapture.capture"

    iput-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->ACTION:Ljava/lang/String;

    .line 3473
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.app.screencapture.capture"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    .line 3474
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 3475
    return-void
.end method


# virtual methods
.method doIninterceptKeyBeforeQueueing(IZZ)I
    .locals 3
    .parameter "keyCode"
    .parameter "isScreenOn"
    .parameter "down"

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 3505
    if-nez p2, :cond_0

    .line 3506
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->updateBackKeyPressed(Z)V

    move v0, v1

    .line 3537
    :goto_0
    return v0

    .line 3510
    :cond_0
    const/16 v0, 0x1a

    if-ne p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->isBackKeyPressed()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3516
    if-eqz p2, :cond_1

    if-nez p3, :cond_1

    .line 3517
    const-string v0, "ScreenCaptureAction"

    const-string v1, "interceptKeyBeforeQueueing(), now send intent"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3518
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->sendIntent()V

    :cond_1
    move v0, v2

    .line 3521
    goto :goto_0

    .line 3526
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    .line 3527
    invoke-virtual {p0, p3}, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->updateBackKeyPressed(Z)V

    :cond_3
    move v0, v1

    .line 3537
    goto :goto_0
.end method

.method isBackKeyPressed()Z
    .locals 3

    .prologue
    .line 3483
    const-string v0, "ScreenCaptureAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBackKeyPressed(), return value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mBackKeyPressed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3484
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mBackKeyPressed:Z

    return v0
.end method

.method isSentIntent()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3495
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    if-eqz v0, :cond_0

    .line 3496
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    .line 3497
    const/4 v0, 0x1

    .line 3500
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method sendIntent()V
    .locals 3

    .prologue
    const-string v2, "ScreenCaptureAction"

    .line 3488
    const-string v0, "ScreenCaptureAction"

    const-string v0, "sendIntent() is called"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3489
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3490
    const-string v0, "ScreenCaptureAction"

    const-string v0, "******************** Intent[com.sec.android.app.screencapture.capture] is sent. *************************"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mIsSentIntent:Z

    .line 3492
    return-void
.end method

.method updateBackKeyPressed(Z)V
    .locals 3
    .parameter "pressed"

    .prologue
    .line 3478
    const-string v0, "ScreenCaptureAction"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBackKeyPressed(), pressed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$ScreenCaptureAction;->mBackKeyPressed:Z

    .line 3480
    return-void
.end method