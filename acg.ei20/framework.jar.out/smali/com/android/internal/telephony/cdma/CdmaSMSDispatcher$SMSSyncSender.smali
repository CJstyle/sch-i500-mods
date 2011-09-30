.class Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;
.super Landroid/os/Handler;
.source "CdmaSMSDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SMSSyncSender"
.end annotation


# static fields
.field static final EVENT_SENT:I = 0x1


# instance fields
.field mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

.field private property:Ljava/lang/String;

.field private smsQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;Landroid/os/Looper;Lcom/android/internal/telephony/SMSDispatcher;)V
    .locals 1
    .parameter
    .parameter "looper"
    .parameter "dispatcher"

    .prologue
    .line 955
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    .line 956
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 951
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    .line 957
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    .line 958
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 959
    return-void
.end method


# virtual methods
.method public addSendQueue(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V
    .locals 7
    .parameter "tracker"

    .prologue
    const/4 v5, 0x1

    const-string v6, "CDMA"

    .line 968
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-ne v4, v5, :cond_0

    .line 970
    iget-object v1, p1, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 971
    .local v1, map:Ljava/util/HashMap;
    const-string/jumbo v4, "pdu"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    move-object v0, v4

    check-cast v0, [B

    move-object v2, v0

    .line 973
    .local v2, pdu:[B
    const-string v4, "CDMA"

    const-string v4, "SMS send"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual {p0, v5, p1}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 975
    .local v3, reply:Landroid/os/Message;
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v4}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$000(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    .line 976
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 977
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 978
    monitor-exit v4

    .line 987
    .end local v1           #map:Ljava/util/HashMap;
    .end local v2           #pdu:[B
    .end local v3           #reply:Landroid/os/Message;
    :goto_0
    return-void

    .line 978
    .restart local v1       #map:Ljava/util/HashMap;
    .restart local v2       #pdu:[B
    .restart local v3       #reply:Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 982
    .end local v1           #map:Ljava/util/HashMap;
    .end local v2           #pdu:[B
    .end local v3           #reply:Landroid/os/Message;
    :cond_0
    const-string v4, "CDMA"

    const-string v4, "SMS add"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v4

    .line 984
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 985
    monitor-exit v4

    goto :goto_0

    :catchall_1
    move-exception v5

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v5
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .parameter "msg"

    .prologue
    const/4 v11, 0x0

    const/4 v8, 0x2

    const/4 v10, 0x1

    const-string v9, "CDMA"

    .line 992
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    .line 994
    .local v1, ar:Landroid/os/AsyncResult;
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 1083
    :goto_0
    return-void

    .line 996
    :pswitch_0
    iget-object v6, v1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    .line 998
    .local v6, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, v8, v11}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 999
    .local v5, reply:Landroid/os/Message;
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v7, v5, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1000
    const-string v7, "CDMA"

    const-string/jumbo v7, "sent the SMS"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v7, :cond_3

    .line 1003
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v1           #ar:Landroid/os/AsyncResult;
    check-cast v1, Landroid/os/AsyncResult;

    .line 1005
    .restart local v1       #ar:Landroid/os/AsyncResult;
    iget-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    check-cast v7, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/CommandException$Error;->SMS_FAIL_RETRY:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v7, v8, :cond_3

    .line 1008
    iget v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    if-nez v7, :cond_0

    .line 1009
    iput v10, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1010
    iget-object v3, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1011
    .local v3, map:Ljava/util/HashMap;
    const-string/jumbo v7, "pdu"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v4, v0

    .line 1013
    .local v4, pdu:[B
    const-string v7, "CDMA"

    const-string/jumbo v7, "retry the current SMS"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {p0, v10, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1015
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$100(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V

    goto :goto_0

    .line 1019
    .end local v3           #map:Ljava/util/HashMap;
    .end local v4           #pdu:[B
    :cond_0
    const-string v7, "CDMA"

    const-string v7, "SMS time out in CdmaSMSDispatcher"

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1024
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1025
    :cond_1
    :goto_1
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-nez v7, :cond_2

    .line 1027
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1028
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 1030
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v6, v0

    .line 1031
    const/4 v7, 0x1

    iput v7, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mRetryCount:I

    .line 1032
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    const/4 v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v7, v9, v10}, Lcom/android/internal/telephony/SMSDispatcher;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1033
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v7

    iput-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1034
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    iput-object v6, v7, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    .line 1035
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    const/16 v9, 0xa

    invoke-static {v9}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v9

    iput-object v9, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1038
    const-string v7, "CDMA"

    const-string v9, "mark the next SMS time out failed"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, p1}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1042
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1044
    .local v2, e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_2
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SEND_SMS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v2           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 1054
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->mDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/SMSDispatcher;->sendMessage(Landroid/os/Message;)Z

    .line 1056
    iget-object v8, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    monitor-enter v8

    .line 1057
    :try_start_3
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v7

    if-nez v7, :cond_4

    .line 1060
    :try_start_4
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1061
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 1063
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->smsQueue:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-object v6, v0

    .line 1064
    iget-object v3, v6, Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;->mData:Ljava/util/HashMap;

    .line 1065
    .restart local v3       #map:Ljava/util/HashMap;
    const-string/jumbo v7, "pdu"

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    move-object v0, v7

    check-cast v0, [B

    move-object v4, v0

    .line 1067
    .restart local v4       #pdu:[B
    const-string v7, "CDMA"

    const-string/jumbo v9, "send the next SMS in handleMessage"

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
    const/4 v7, 0x1

    invoke-virtual {p0, v7, v6}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1069
    iget-object v7, p0, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher$SMSSyncSender;->this$0:Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v7}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;->access$200(Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/CommandsInterface;

    move-result-object v7

    invoke-interface {v7, v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->sendCdmaSms([BLandroid/os/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1077
    .end local v3           #map:Ljava/util/HashMap;
    .end local v4           #pdu:[B
    :cond_4
    :goto_2
    :try_start_5
    monitor-exit v8

    goto/16 :goto_0

    :catchall_1
    move-exception v7

    monitor-exit v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v7

    .line 1072
    :catch_1
    move-exception v7

    move-object v2, v7

    .line 1074
    .restart local v2       #e:Ljava/lang/IndexOutOfBoundsException;
    :try_start_6
    const-string v7, "CDMA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_SEND_SMS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 994
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public run()V
    .locals 0

    .prologue
    .line 964
    return-void
.end method
