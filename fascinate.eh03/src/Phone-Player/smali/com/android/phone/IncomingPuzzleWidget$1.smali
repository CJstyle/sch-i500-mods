.class Lcom/android/phone/IncomingPuzzleWidget$1;
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
    .line 162
    iput-object p1, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 13
    .parameter "v"

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const-string v6, "phone"

    .line 165
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #calls: Lcom/android/phone/IncomingPuzzleWidget;->stopHandler()V
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$000(Lcom/android/phone/IncomingPuzzleWidget;)V

    .line 166
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #calls: Lcom/android/phone/IncomingPuzzleWidget;->endInComingCall()V
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$100(Lcom/android/phone/IncomingPuzzleWidget;)V

    .line 167
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mIncomingPuzzleLayout:Landroid/widget/RelativeLayout;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$200(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/widget/RelativeLayout;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$300(Lcom/android/phone/IncomingPuzzleWidget;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 170
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getCallerName(Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v4

    .line 171
    .local v4, name:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->disableKeyguardIgnoreFurther()V

    .line 172
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_2

    move v2, v10

    .line 173
    .local v2, hasForeground:Z
    :goto_0
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->currentPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$400(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_3

    move v1, v10

    .line 175
    .local v1, hasBackground:Z
    :goto_1
    if-nez v2, :cond_0

    if-eqz v1, :cond_4

    .line 177
    :cond_0
    :try_start_0
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 178
    .local v5, phone:Lcom/android/internal/telephony/ITelephony;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    iget-object v8, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/phone/IncomingPuzzleWidget;->access$300(Lcom/android/phone/IncomingPuzzleWidget;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v3, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 179
    .local v3, intent:Landroid/content/Intent;
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v6

    if-ne v6, v12, :cond_1

    .line 180
    const-string v6, "IncomingPuzzleWidget"

    const-string v7, "isCdma"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const-string v6, "com.android.phone.extra.SEND_EMPTY_FLASH"

    const/4 v7, 0x1

    invoke-virtual {v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 183
    :cond_1
    const/high16 v6, 0x1000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 184
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1           #hasBackground:Z
    .end local v2           #hasForeground:Z
    .end local v3           #intent:Landroid/content/Intent;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #phone:Lcom/android/internal/telephony/ITelephony;
    :goto_2
    return-void

    .restart local v4       #name:Ljava/lang/String;
    :cond_2
    move v2, v11

    .line 172
    goto :goto_0

    .restart local v2       #hasForeground:Z
    :cond_3
    move v1, v11

    .line 173
    goto :goto_1

    .line 185
    .restart local v1       #hasBackground:Z
    :catch_0
    move-exception v6

    move-object v0, v6

    .line 186
    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .line 190
    .end local v0           #e:Landroid/os/RemoteException;
    :cond_4
    :try_start_1
    const-string v6, "phone"

    invoke-static {v6}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 191
    .restart local v5       #phone:Lcom/android/internal/telephony/ITelephony;
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$500(Lcom/android/phone/IncomingPuzzleWidget;)Lcom/android/phone/InCallScreen;

    move-result-object v6

    iget-object v7, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mPhoneNum:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/phone/IncomingPuzzleWidget;->access$300(Lcom/android/phone/IncomingPuzzleWidget;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneType()I

    move-result v9

    if-ne v9, v12, :cond_5

    move v9, v10

    :goto_3
    invoke-virtual {v6, v7, v4, v8, v9}, Lcom/android/phone/InCallScreen;->startRejectThenRecall(Ljava/lang/String;Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 192
    .end local v5           #phone:Lcom/android/internal/telephony/ITelephony;
    :catch_1
    move-exception v6

    move-object v0, v6

    .line 193
    .restart local v0       #e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    .end local v0           #e:Landroid/os/RemoteException;
    .restart local v5       #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_5
    move v9, v11

    .line 191
    goto :goto_3

    .line 197
    .end local v1           #hasBackground:Z
    .end local v2           #hasForeground:Z
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_6
    iget-object v6, p0, Lcom/android/phone/IncomingPuzzleWidget$1;->this$0:Lcom/android/phone/IncomingPuzzleWidget;

    #getter for: Lcom/android/phone/IncomingPuzzleWidget;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/android/phone/IncomingPuzzleWidget;->access$600(Lcom/android/phone/IncomingPuzzleWidget;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0d0007

    invoke-static {v6, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method
