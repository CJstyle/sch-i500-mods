.class Lcom/android/phone/InCallScreen$2;
.super Landroid/os/Handler;
.source "InCallScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/16 v11, 0x80

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 567
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsDestroyed:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$200(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 568
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: ignoring message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "; we\'re destroyed!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 843
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 571
    .restart local p0
    :cond_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$400(Lcom/android/phone/InCallScreen;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 572
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Handler: handling message "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " while not in foreground"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 580
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 581
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 641
    :sswitch_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V
    invoke-static {v5, p0}, Lcom/android/phone/InCallScreen;->access$1400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 583
    .restart local p0
    :sswitch_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v5, p0}, Lcom/android/phone/InCallScreen;->onSuppServiceFailed(Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 587
    .restart local p0
    :sswitch_2
    sget-boolean v5, Lcom/android/phone/BluetoothHandsfree;->mBluetoothAnswer:Z

    if-eqz v5, :cond_3

    .line 588
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$600(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;

    move-result-object v5

    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mOrientation:I
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$500(Lcom/android/phone/InCallScreen;)I

    move-result v6

    invoke-virtual {v5, v6, v9}, Lcom/android/phone/CallCard;->setOrientation(IZ)V

    .line 589
    sput-boolean v8, Lcom/android/phone/BluetoothHandsfree;->mBluetoothAnswer:Z

    .line 592
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 593
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 594
    :try_start_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 595
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v7, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$702(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 596
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :cond_4
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_5

    .line 602
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mInEmergencyCallBeep:Z
    invoke-static {v5, v8}, Lcom/android/phone/InCallScreen;->access$902(Lcom/android/phone/InCallScreen;Z)Z

    .line 603
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v11}, Landroid/os/Handler;->removeMessages(I)V

    .line 605
    :cond_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V
    invoke-static {v5, p0}, Lcom/android/phone/InCallScreen;->access$1100(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 596
    .restart local p0
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 609
    :sswitch_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    #calls: Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V
    invoke-static {v5, p0}, Lcom/android/phone/InCallScreen;->access$1200(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V

    .line 611
    sput-boolean v8, Lcom/android/phone/PhoneUtils;->mActualDisconnected:Z

    goto/16 :goto_0

    .line 624
    .restart local p0
    :sswitch_4
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v5

    if-nez v5, :cond_6

    .line 625
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eq v5, v9, :cond_7

    .line 630
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 637
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 634
    :cond_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-static {v5, v8, v8}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 645
    :sswitch_5
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onMMICancel()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1500(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 654
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1600(Lcom/android/phone/InCallScreen;)V

    .line 658
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/AsyncResult;

    iget-object v3, v5, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/MmiCode;

    .line 660
    .local v3, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 661
    .local v4, phoneType:I
    const/4 v5, 0x2

    if-ne v4, v5, :cond_8

    .line 662
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v0, v3, v10, v10}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    goto/16 :goto_0

    .line 663
    :cond_8
    if-ne v4, v9, :cond_0

    .line 664
    invoke-interface {v3}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v5, v6, :cond_0

    .line 665
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Got MMI_COMPLETE, finishing InCallScreen..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 668
    sget-object v5, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v6

    if-eq v5, v6, :cond_9

    .line 669
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Got MMI_COMPLETE, but Call exist..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 673
    :cond_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_0

    .line 679
    .end local v3           #mmiCode:Lcom/android/internal/telephony/MmiCode;
    .end local v4           #phoneType:I
    :sswitch_7
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    iget v6, p1, Landroid/os/Message;->arg1:I

    int-to-char v6, v6

    #calls: Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    invoke-static {v5, p0, v6}, Lcom/android/phone/InCallScreen;->access$1700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V

    goto/16 :goto_0

    .line 683
    .restart local p0
    :sswitch_8
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1800(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 687
    :sswitch_9
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 691
    :sswitch_a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 696
    :sswitch_b
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v9}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    goto/16 :goto_0

    .line 705
    :sswitch_c
    invoke-virtual {v0, v8}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_0

    .line 715
    :sswitch_d
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 719
    :sswitch_e
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2100()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Received PHONE_CDMA_CALL_WAITING event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 721
    :cond_a
    sput-boolean v8, Lcom/android/phone/PhoneUtils;->mActualDisconnected:Z

    .line 722
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 723
    .local v2, foreCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v9, :cond_b

    .line 724
    sput-boolean v9, Lcom/android/phone/PhoneUtils;->mActualDisconnected:Z

    .line 728
    :cond_b
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2200(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 730
    .local v1, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v1, :cond_0

    .line 733
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    .line 734
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_0

    .line 739
    .end local v1           #cn:Lcom/android/internal/telephony/Connection;
    .end local v2           #foreCall:Lcom/android/internal/telephony/Call;
    :sswitch_f
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2100()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Received THREEWAY_CALLERINFO_DISPLAY_DONE event ..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 740
    :cond_c
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v5

    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v5, v6, :cond_0

    .line 743
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5, v8}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 746
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 751
    :sswitch_10
    sget-object v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    .line 752
    sget-object v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v5, p0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 757
    .restart local p0
    :sswitch_11
    sget-object v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    .line 758
    sget-object v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseSpcNotice()V

    goto/16 :goto_0

    .line 763
    :sswitch_12
    sget-object v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_0

    .line 764
    sget-object v5, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v5}, Lcom/android/phone/OtaUtils;->onOtaCloseFailureNotice()V

    goto/16 :goto_0

    .line 769
    :sswitch_13
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 770
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2100()Z

    move-result v5

    if-eqz v5, :cond_d

    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "- DISMISSING mPausePromptDialog."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 771
    :cond_d
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2300(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 772
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;
    invoke-static {v5, v10}, Lcom/android/phone/InCallScreen;->access$2302(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 777
    :sswitch_14
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->onAddCall()V

    goto/16 :goto_0

    .line 780
    :sswitch_15
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$800(Lcom/android/phone/InCallScreen;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 781
    :try_start_2
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v6

    if-nez v6, :cond_f

    .line 782
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2100()Z

    move-result v6

    if-eqz v6, :cond_e

    const-string v6, "InCallScreen"

    const-string v7, "mHandler: mToneGenerator == null"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    :cond_e
    :goto_2
    monitor-exit v5

    goto/16 :goto_0

    :catchall_1
    move-exception v6

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v6

    .line 784
    :cond_f
    :try_start_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 785
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v6, v6, Lcom/android/phone/InCallScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v6

    if-eqz v6, :cond_e

    .line 786
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v6}, Lcom/android/phone/InCallScreen;->access$2400(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 787
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const/4 v7, 0x0

    #setter for: Lcom/android/phone/InCallScreen;->mToneGenerator:Landroid/media/ToneGenerator;
    invoke-static {v6, v7}, Lcom/android/phone/InCallScreen;->access$2402(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 795
    :sswitch_16
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 796
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Landroid/media/ToneGenerator;

    const/16 v7, 0x4b

    invoke-direct {v6, v8, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/phone/InCallScreen;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$702(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 797
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorInVoice:Landroid/media/ToneGenerator;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$700(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v5

    const/16 v6, 0x5c

    invoke-virtual {v5, v6}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto/16 :goto_0

    .line 802
    :sswitch_17
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v5, v6, :cond_0

    .line 803
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->goToSleep()V

    goto/16 :goto_0

    .line 811
    :sswitch_18
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->onSpeakerClick()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2500(Lcom/android/phone/InCallScreen;)V

    .line 813
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->extraDockSpeaker:I
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2600(Lcom/android/phone/InCallScreen;)I

    move-result v5

    if-eq v5, v9, :cond_10

    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->extraCarDockSpeaker:I
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2700(Lcom/android/phone/InCallScreen;)I

    move-result v5

    if-ne v5, v9, :cond_0

    .line 814
    :cond_10
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateScreen()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1300(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 821
    :sswitch_19
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #setter for: Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z
    invoke-static {v5, v8}, Lcom/android/phone/InCallScreen;->access$2802(Lcom/android/phone/InCallScreen;Z)Z

    .line 822
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateProviderOverlay()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$2900(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 826
    :sswitch_1a
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #calls: Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$3000(Lcom/android/phone/InCallScreen;)V

    goto/16 :goto_0

    .line 832
    :sswitch_1b
    invoke-static {}, Lcom/android/phone/InCallScreen;->access$2100()Z

    move-result v5

    if-eqz v5, :cond_11

    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v6, "Emergency Beep Timeout"

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$300(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 833
    :cond_11
    iget-object v6, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    const-string v7, "audio"

    invoke-virtual {v5, v7}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, v6, Lcom/android/phone/InCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 834
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v5, v5, Lcom/android/phone/InCallScreen;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v5}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v5

    if-eq v5, v9, :cond_13

    .line 835
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorEmergencyBeep:Landroid/media/ToneGenerator;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$3100(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v5

    if-nez v5, :cond_12

    .line 836
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    new-instance v6, Landroid/media/ToneGenerator;

    const/16 v7, 0x50

    invoke-direct {v6, v8, v7}, Landroid/media/ToneGenerator;-><init>(II)V

    #setter for: Lcom/android/phone/InCallScreen;->mToneGeneratorEmergencyBeep:Landroid/media/ToneGenerator;
    invoke-static {v5, v6}, Lcom/android/phone/InCallScreen;->access$3102(Lcom/android/phone/InCallScreen;Landroid/media/ToneGenerator;)Landroid/media/ToneGenerator;

    .line 837
    :cond_12
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorEmergencyBeep:Landroid/media/ToneGenerator;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$3100(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/ToneGenerator;->stopTone()V

    .line 838
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mToneGeneratorEmergencyBeep:Landroid/media/ToneGenerator;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$3100(Lcom/android/phone/InCallScreen;)Landroid/media/ToneGenerator;

    move-result-object v5

    const/16 v6, 0x18

    invoke-virtual {v5, v6}, Landroid/media/ToneGenerator;->startTone(I)Z

    .line 840
    :cond_13
    iget-object v5, p0, Lcom/android/phone/InCallScreen$2;->this$0:Lcom/android/phone/InCallScreen;

    #getter for: Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/android/phone/InCallScreen;->access$1000(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v11, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 581
    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x65 -> :sswitch_2
        0x66 -> :sswitch_3
        0x67 -> :sswitch_4
        0x68 -> :sswitch_7
        0x6a -> :sswitch_8
        0x6b -> :sswitch_9
        0x6c -> :sswitch_a
        0x6e -> :sswitch_1
        0x6f -> :sswitch_b
        0x70 -> :sswitch_c
        0x72 -> :sswitch_d
        0x73 -> :sswitch_e
        0x74 -> :sswitch_f
        0x75 -> :sswitch_10
        0x76 -> :sswitch_11
        0x77 -> :sswitch_12
        0x78 -> :sswitch_13
        0x79 -> :sswitch_19
        0x7a -> :sswitch_1a
        0x7b -> :sswitch_17
        0x7c -> :sswitch_14
        0x7d -> :sswitch_15
        0x7e -> :sswitch_16
        0x7f -> :sswitch_18
        0x80 -> :sswitch_1b
    .end sparse-switch
.end method
