.class Lcom/android/phone/IncomingPuzzleWidget$2;
.super Ljava/lang/Object;
.source "IncomingPuzzleWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/IncomingPuzzleWidget;->initialize(Lcom/android/phone/InCallScreen;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/IncomingPuzzleWidget;


# direct methods
.method constructor <init>(Lcom/android/phone/IncomingPuzzleWidget;)V
    .locals 0
    .parameter

    .prologue
    .line 205
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 208
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #calls: Lcom/android/phone/IncomingPuzzleWidget;->stopHandler()V
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$000(Lcom/android/phone/IncomingPuzzleWidget;)V

    .line 209
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #calls: Lcom/android/phone/IncomingPuzzleWidget;->endInComingCall()V
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$100(Lcom/android/phone/IncomingPuzzleWidget;)V

    .line 211
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIncomingPuzzleLayout:Landroid/widget/RelativeLayout;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/RelativeLayout;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 213
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$300(Lcom/android/phone/IncomingPuzzleWidget;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 214
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->disableKeyguardIgnoreFurther()V

    .line 215
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, name:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v7

    .line 217
    .local v1, hasForeground:Z
    :goto_0
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_2

    move v0, v7

    .line 218
    .local v0, hasBackground:Z
    :goto_1
    if-nez v1, :cond_0

    if-eqz v0, :cond_3

    .line 220
    :cond_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v4

    const-class v5, Lcom/android/phone/RejectCallWithMsg;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 221
    .local v2, intent_msg:Landroid/content/Intent;
    const-string v4, "phone_number"

    iget-object v5, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/IncomingPuzzleWidget;->access$300(Lcom/android/phone/IncomingPuzzleWidget;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    const-string v4, "CONATACT_NAME"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    const/high16 v4, 0x1000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 224
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 231
    .end local v0           #hasBackground:Z
    .end local v1           #hasForeground:Z
    .end local v2           #intent_msg:Landroid/content/Intent;
    .end local v3           #name:Ljava/lang/String;
    :goto_2
    return-void

    .restart local v3       #name:Ljava/lang/String;
    :cond_1
    move v1, v6

    .line 216
    goto :goto_0

    .restart local v1       #hasForeground:Z
    :cond_2
    move v0, v6

    .line 217
    goto :goto_1

    .line 226
    .restart local v0       #hasBackground:Z
    :cond_3
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/phone/IncomingPuzzleWidget;->access$300(Lcom/android/phone/IncomingPuzzleWidget;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/android/phone/InCallScreen;->startRejectWithMsgAfterDisconnect(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 229
    .end local v0           #hasBackground:Z
    .end local v1           #hasForeground:Z
    .end local v3           #name:Ljava/lang/String;
    :cond_4
    iget-object v4, p0, Lcom/android/phone/IncomingPuzzleWidget$2;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/phone/IncomingPuzzleWidget;->access$600(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0008

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
