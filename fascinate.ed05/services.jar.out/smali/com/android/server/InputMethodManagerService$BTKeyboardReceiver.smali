.class Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;
.super Landroid/content/BroadcastReceiver;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BTKeyboardReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/InputMethodManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const-string v5, "InputManagerService"

    .line 368
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, intentAction:Ljava/lang/String;
    const-string v2, "InputManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputMethodService onReceive() intentAction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    const-string v2, "com.broadcom.bt.service.hid.action.STATE_CHANGED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 371
    const-string v2, "com.broadcom.bt.service.hid.extra.STATE"

    const/4 v3, -0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 372
    .local v0, extra:I
    const-string v2, "InputManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive() getIntExtra "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    if-ne v0, v4, :cond_1

    .line 374
    invoke-static {v4}, Lcom/android/server/InputMethodManagerService;->access$076(I)I

    .line 375
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->setDefaultIMEForKeyboard()V

    .line 376
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    .line 377
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 378
    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$100()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/InputMethodManagerService;->mCurMethodId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 379
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2, v4}, Lcom/android/server/InputMethodManagerService;->showKeyboardNotiDailog(I)V

    .line 389
    .end local v0           #extra:I
    :cond_0
    :goto_0
    const-string v2, "InputManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InputMethodService onReceive() keyboardState : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/InputMethodManagerService;->access$000()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    return-void

    .line 384
    .restart local v0       #extra:I
    :cond_1
    const/4 v2, -0x3

    invoke-static {v2}, Lcom/android/server/InputMethodManagerService;->access$072(I)I

    .line 385
    iget-object v2, p0, Lcom/android/server/InputMethodManagerService$BTKeyboardReceiver;->this$0:Lcom/android/server/InputMethodManagerService;

    invoke-virtual {v2}, Lcom/android/server/InputMethodManagerService;->hideKeyboardDialog()V

    goto :goto_0
.end method
